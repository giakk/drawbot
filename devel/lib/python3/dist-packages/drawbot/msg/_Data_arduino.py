# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from drawbot/Data_arduino.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Data_arduino(genpy.Message):
  _md5sum = "0ea41ce24b57574c9a377aecfc3f65a6"
  _type = "drawbot/Data_arduino"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 ref_speed_r
float32 ref_speed_l
float32 mesu_speed_r
float32 mesu_speed_l
float32 controller_speed_r
float32 controller_speed_l
float32 err_speed_r
float32 err_speed_l
float32 err_sum_speed_r
float32 err_sum_speed_l
float32 time_of_measure
"""
  __slots__ = ['ref_speed_r','ref_speed_l','mesu_speed_r','mesu_speed_l','controller_speed_r','controller_speed_l','err_speed_r','err_speed_l','err_sum_speed_r','err_sum_speed_l','time_of_measure']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ref_speed_r,ref_speed_l,mesu_speed_r,mesu_speed_l,controller_speed_r,controller_speed_l,err_speed_r,err_speed_l,err_sum_speed_r,err_sum_speed_l,time_of_measure

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Data_arduino, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ref_speed_r is None:
        self.ref_speed_r = 0.
      if self.ref_speed_l is None:
        self.ref_speed_l = 0.
      if self.mesu_speed_r is None:
        self.mesu_speed_r = 0.
      if self.mesu_speed_l is None:
        self.mesu_speed_l = 0.
      if self.controller_speed_r is None:
        self.controller_speed_r = 0.
      if self.controller_speed_l is None:
        self.controller_speed_l = 0.
      if self.err_speed_r is None:
        self.err_speed_r = 0.
      if self.err_speed_l is None:
        self.err_speed_l = 0.
      if self.err_sum_speed_r is None:
        self.err_sum_speed_r = 0.
      if self.err_sum_speed_l is None:
        self.err_sum_speed_l = 0.
      if self.time_of_measure is None:
        self.time_of_measure = 0.
    else:
      self.ref_speed_r = 0.
      self.ref_speed_l = 0.
      self.mesu_speed_r = 0.
      self.mesu_speed_l = 0.
      self.controller_speed_r = 0.
      self.controller_speed_l = 0.
      self.err_speed_r = 0.
      self.err_speed_l = 0.
      self.err_sum_speed_r = 0.
      self.err_sum_speed_l = 0.
      self.time_of_measure = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_11f().pack(_x.ref_speed_r, _x.ref_speed_l, _x.mesu_speed_r, _x.mesu_speed_l, _x.controller_speed_r, _x.controller_speed_l, _x.err_speed_r, _x.err_speed_l, _x.err_sum_speed_r, _x.err_sum_speed_l, _x.time_of_measure))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 44
      (_x.ref_speed_r, _x.ref_speed_l, _x.mesu_speed_r, _x.mesu_speed_l, _x.controller_speed_r, _x.controller_speed_l, _x.err_speed_r, _x.err_speed_l, _x.err_sum_speed_r, _x.err_sum_speed_l, _x.time_of_measure,) = _get_struct_11f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_11f().pack(_x.ref_speed_r, _x.ref_speed_l, _x.mesu_speed_r, _x.mesu_speed_l, _x.controller_speed_r, _x.controller_speed_l, _x.err_speed_r, _x.err_speed_l, _x.err_sum_speed_r, _x.err_sum_speed_l, _x.time_of_measure))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 44
      (_x.ref_speed_r, _x.ref_speed_l, _x.mesu_speed_r, _x.mesu_speed_l, _x.controller_speed_r, _x.controller_speed_l, _x.err_speed_r, _x.err_speed_l, _x.err_sum_speed_r, _x.err_sum_speed_l, _x.time_of_measure,) = _get_struct_11f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_11f = None
def _get_struct_11f():
    global _struct_11f
    if _struct_11f is None:
        _struct_11f = struct.Struct("<11f")
    return _struct_11f
