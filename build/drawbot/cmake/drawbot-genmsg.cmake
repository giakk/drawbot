# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "drawbot: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idrawbot:/home/riccardo/catkin_ws/src/drawbot/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(drawbot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg" NAME_WE)
add_custom_target(_drawbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drawbot" "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(drawbot
  "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drawbot
)

### Generating Services

### Generating Module File
_generate_module_cpp(drawbot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drawbot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(drawbot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(drawbot_generate_messages drawbot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg" NAME_WE)
add_dependencies(drawbot_generate_messages_cpp _drawbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drawbot_gencpp)
add_dependencies(drawbot_gencpp drawbot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drawbot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(drawbot
  "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drawbot
)

### Generating Services

### Generating Module File
_generate_module_eus(drawbot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drawbot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(drawbot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(drawbot_generate_messages drawbot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg" NAME_WE)
add_dependencies(drawbot_generate_messages_eus _drawbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drawbot_geneus)
add_dependencies(drawbot_geneus drawbot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drawbot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(drawbot
  "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drawbot
)

### Generating Services

### Generating Module File
_generate_module_lisp(drawbot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drawbot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(drawbot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(drawbot_generate_messages drawbot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg" NAME_WE)
add_dependencies(drawbot_generate_messages_lisp _drawbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drawbot_genlisp)
add_dependencies(drawbot_genlisp drawbot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drawbot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(drawbot
  "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drawbot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(drawbot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drawbot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(drawbot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(drawbot_generate_messages drawbot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg" NAME_WE)
add_dependencies(drawbot_generate_messages_nodejs _drawbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drawbot_gennodejs)
add_dependencies(drawbot_gennodejs drawbot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drawbot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(drawbot
  "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drawbot
)

### Generating Services

### Generating Module File
_generate_module_py(drawbot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drawbot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(drawbot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(drawbot_generate_messages drawbot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg" NAME_WE)
add_dependencies(drawbot_generate_messages_py _drawbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drawbot_genpy)
add_dependencies(drawbot_genpy drawbot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drawbot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drawbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drawbot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(drawbot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drawbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drawbot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(drawbot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drawbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drawbot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(drawbot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drawbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drawbot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(drawbot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drawbot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drawbot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drawbot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(drawbot_generate_messages_py std_msgs_generate_messages_py)
endif()
