cmake_minimum_required(VERSION 3.5)

project(robot-models)

macro(SUBDIRLIST result curdir)
  file(GLOB children RELATIVE ${curdir} ${curdir}/*)
  set(dirlist "")
  foreach(child ${children})
    if(IS_DIRECTORY ${curdir}/${child})
      list(APPEND dirlist ${child})
    endif()
  endforeach()
  set(${result} ${dirlist})
endmacro()

# Copy the retargeting-models folder in the build tree
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/retargeting-models DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

SUBDIRLIST(ROBOTS_NAMES ${CMAKE_CURRENT_BINARY_DIR}/retargeting-models/robots)
foreach (ROBOT_DIRNAME ${ROBOTS_NAMES})
  set(ROBOT_NAME ${ROBOT_DIRNAME})
  set(ROBOT_MODEL_CONFIG_FILE "${CMAKE_CURRENT_BINARY_DIR}/retargeting-models/robots/${ROBOT_NAME}/model.config")
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/model.config.in
                 ${ROBOT_MODEL_CONFIG_FILE}
                 @ONLY)
endforeach()

# Install the whole retargeting-models directory
install(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/retargeting-models DESTINATION share)
