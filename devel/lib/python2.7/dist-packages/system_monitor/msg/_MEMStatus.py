# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from system_monitor/MEMStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import system_monitor.msg

class MEMStatus(genpy.Message):
  _md5sum = "87aa3708fd29c92a6112f09fa739ebe9"
  _type = "system_monitor/MEMStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 time
system_monitor/Memory[] memories
#Memory space in M
int32 totalM
int32 usedM
int32 freeM
================================================================================
MSG: system_monitor/Memory
string name
#Memory space in M
#Physical w/o buffers total is zero
int32 total
int32 used
int32 free"""
  __slots__ = ['time','memories','totalM','usedM','freeM']
  _slot_types = ['float32','system_monitor/Memory[]','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time,memories,totalM,usedM,freeM

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MEMStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time is None:
        self.time = 0.
      if self.memories is None:
        self.memories = []
      if self.totalM is None:
        self.totalM = 0
      if self.usedM is None:
        self.usedM = 0
      if self.freeM is None:
        self.freeM = 0
    else:
      self.time = 0.
      self.memories = []
      self.totalM = 0
      self.usedM = 0
      self.freeM = 0

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
      _x = self.time
      buff.write(_get_struct_f().pack(_x))
      length = len(self.memories)
      buff.write(_struct_I.pack(length))
      for val1 in self.memories:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_3i().pack(_x.total, _x.used, _x.free))
      _x = self
      buff.write(_get_struct_3i().pack(_x.totalM, _x.usedM, _x.freeM))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.memories is None:
        self.memories = None
      end = 0
      start = end
      end += 4
      (self.time,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.memories = []
      for i in range(0, length):
        val1 = system_monitor.msg.Memory()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.total, _x.used, _x.free,) = _get_struct_3i().unpack(str[start:end])
        self.memories.append(val1)
      _x = self
      start = end
      end += 12
      (_x.totalM, _x.usedM, _x.freeM,) = _get_struct_3i().unpack(str[start:end])
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
      _x = self.time
      buff.write(_get_struct_f().pack(_x))
      length = len(self.memories)
      buff.write(_struct_I.pack(length))
      for val1 in self.memories:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_3i().pack(_x.total, _x.used, _x.free))
      _x = self
      buff.write(_get_struct_3i().pack(_x.totalM, _x.usedM, _x.freeM))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.memories is None:
        self.memories = None
      end = 0
      start = end
      end += 4
      (self.time,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.memories = []
      for i in range(0, length):
        val1 = system_monitor.msg.Memory()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.total, _x.used, _x.free,) = _get_struct_3i().unpack(str[start:end])
        self.memories.append(val1)
      _x = self
      start = end
      end += 12
      (_x.totalM, _x.usedM, _x.freeM,) = _get_struct_3i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3i = None
def _get_struct_3i():
    global _struct_3i
    if _struct_3i is None:
        _struct_3i = struct.Struct("<3i")
    return _struct_3i
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
