// /AnalogClock/MinuteNeedle.qml
#include <QtQml/qqmlprivate.h>
#include <QtCore/qdatetime.h>
#include <QtCore/qobject.h>
#include <QtCore/qstring.h>
#include <QtCore/qstringlist.h>
#include <QtCore/qtimezone.h>
#include <QtCore/qurl.h>
#include <QtCore/qvariant.h>
#include <QtQml/qjsengine.h>
#include <QtQml/qjsprimitivevalue.h>
#include <QtQml/qjsvalue.h>
#include <QtQml/qqmlcomponent.h>
#include <QtQml/qqmlcontext.h>
#include <QtQml/qqmlengine.h>
#include <QtQml/qqmllist.h>
#include <type_traits>
namespace QmlCacheGeneratedCode {
namespace _0x5f_AnalogClock_MinuteNeedle_qml {
extern const unsigned char qmlData alignas(16) [];
extern const unsigned char qmlData alignas(16) [] = {

0x71,0x76,0x34,0x63,0x64,0x61,0x74,0x61,
0x3d,0x0,0x0,0x0,0x2,0x6,0x6,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0xe0,0x7,0x0,0x0,0x31,0x64,0x36,0x35,
0x30,0x36,0x36,0x61,0x63,0x31,0x61,0x33,
0x61,0x34,0x61,0x36,0x64,0x32,0x62,0x61,
0x36,0x61,0x66,0x33,0x36,0x66,0x34,0x61,
0x61,0x36,0x30,0x63,0x30,0x35,0x39,0x61,
0x31,0x31,0x62,0x66,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xf1,0x3a,0x54,0xbe,
0xbb,0xc,0x4,0x71,0x38,0xf7,0x2b,0x7e,
0x9b,0x93,0x5c,0x9e,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x23,0x0,0x0,0x0,
0x15,0x0,0x0,0x0,0xb0,0x2,0x0,0x0,
0x4,0x0,0x0,0x0,0xf8,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x8,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x8,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x8,0x1,0x0,0x0,
0x9,0x0,0x0,0x0,0x8,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x2c,0x1,0x0,0x0,
0x5,0x0,0x0,0x0,0x30,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x58,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x58,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x58,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x58,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x58,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x58,0x1,0x0,0x0,
0x0,0x0,0x0,0x0,0x58,0x1,0x0,0x0,
0xff,0xff,0xff,0xff,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x70,0x5,0x0,0x0,
0x58,0x1,0x0,0x0,0xb8,0x1,0x0,0x0,
0x10,0x2,0x0,0x0,0x60,0x2,0x0,0x0,
0x53,0x0,0x0,0x0,0x43,0x0,0x0,0x0,
0x53,0x0,0x0,0x0,0x33,0x0,0x0,0x0,
0x80,0x0,0x0,0x0,0x33,0x0,0x0,0x0,
0xc0,0x0,0x0,0x0,0x33,0x0,0x0,0x0,
0x40,0x1,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x40,0xf5,0x7f,
0x0,0x0,0x0,0x0,0x0,0x40,0xbb,0x3f,
0x0,0x0,0x0,0x0,0x0,0x40,0xf5,0x3f,
0x68,0x1,0x0,0x0,0x0,0xc0,0x3,0x0,
0x9a,0x99,0x99,0x99,0x99,0xd9,0x2c,0x40,
0x44,0x0,0x0,0x0,0x16,0x0,0x0,0x0,
0x13,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x38,0x0,0x0,0x0,0x39,0x0,0x0,0x0,
0x38,0x0,0x0,0x0,0x0,0x0,0x1,0x0,
0xff,0xff,0xff,0xff,0xa,0x0,0x0,0x0,
0x12,0x0,0x50,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x12,0x0,0x0,0x0,
0x1,0x0,0x0,0x0,0x14,0x3,0x7,0x2e,
0x0,0x9e,0x7,0x18,0x8,0x2e,0x1,0x18,
0x9,0x2e,0x2,0xa0,0x9,0x9c,0x8,0x18,
0x6,0x2,0x0,0x0,0x0,0x0,0x0,0x0,
0x44,0x0,0x0,0x0,0xd,0x0,0x0,0x0,
0x9,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x38,0x0,0x0,0x0,0x39,0x0,0x0,0x0,
0x38,0x0,0x0,0x0,0x0,0x0,0x1,0x0,
0xff,0xff,0xff,0xff,0x8,0x0,0x0,0x0,
0xa,0x0,0x90,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xa,0x0,0x0,0x0,
0x1,0x0,0x0,0x0,0x2e,0x3,0x3c,0x4,
0x18,0x7,0x4,0x4,0x9c,0x7,0x18,0x6,
0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x44,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
0xd,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x38,0x0,0x0,0x0,0x39,0x0,0x0,0x0,
0x38,0x0,0x0,0x0,0x0,0x0,0x1,0x0,
0xff,0xff,0xff,0xff,0x7,0x0,0x0,0x0,
0xd,0x0,0xd0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xd,0x0,0x0,0x0,
0x1,0x0,0x0,0x0,0x2e,0x5,0x3c,0x6,
0x18,0x6,0x2,0x0,0x0,0x0,0x0,0x0,
0x44,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
0xf,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x38,0x0,0x0,0x0,0x39,0x0,0x0,0x0,
0x38,0x0,0x0,0x0,0x0,0x0,0x1,0x0,
0xff,0xff,0xff,0xff,0x7,0x0,0x0,0x0,
0xe,0x0,0xd0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xe,0x0,0x0,0x0,
0x1,0x0,0x0,0x0,0x2e,0x7,0x3c,0x8,
0x18,0x6,0x2,0x0,0x0,0x0,0x0,0x0,
0x8,0x3,0x0,0x0,0x10,0x3,0x0,0x0,
0x28,0x3,0x0,0x0,0x38,0x3,0x0,0x0,
0x48,0x3,0x0,0x0,0x58,0x3,0x0,0x0,
0x78,0x3,0x0,0x0,0x90,0x3,0x0,0x0,
0xa0,0x3,0x0,0x0,0xb8,0x3,0x0,0x0,
0xe8,0x3,0x0,0x0,0xf8,0x3,0x0,0x0,
0x8,0x4,0x0,0x0,0x30,0x4,0x0,0x0,
0x78,0x4,0x0,0x0,0x90,0x4,0x0,0x0,
0xc0,0x4,0x0,0x0,0xd8,0x4,0x0,0x0,
0xf8,0x4,0x0,0x0,0x10,0x5,0x0,0x0,
0x48,0x5,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x7,0x0,0x0,0x0,0x51,0x0,0x74,0x0,
0x51,0x0,0x75,0x0,0x69,0x0,0x63,0x0,
0x6b,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x4,0x0,0x0,0x0,0x49,0x0,0x74,0x0,
0x65,0x0,0x6d,0x0,0x0,0x0,0x0,0x0,
0x4,0x0,0x0,0x0,0x72,0x0,0x6f,0x0,
0x6f,0x0,0x74,0x0,0x0,0x0,0x0,0x0,
0x5,0x0,0x0,0x0,0x76,0x0,0x61,0x0,
0x6c,0x0,0x75,0x0,0x65,0x0,0x0,0x0,
0xb,0x0,0x0,0x0,0x67,0x0,0x72,0x0,
0x61,0x0,0x6e,0x0,0x75,0x0,0x6c,0x0,
0x61,0x0,0x72,0x0,0x69,0x0,0x74,0x0,
0x79,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x9,0x0,0x0,0x0,0x52,0x0,0x65,0x0,
0x63,0x0,0x74,0x0,0x61,0x0,0x6e,0x0,
0x67,0x0,0x6c,0x0,0x65,0x0,0x0,0x0,
0x5,0x0,0x0,0x0,0x77,0x0,0x69,0x0,
0x64,0x0,0x74,0x0,0x68,0x0,0x0,0x0,
0x6,0x0,0x0,0x0,0x68,0x0,0x65,0x0,
0x69,0x0,0x67,0x0,0x68,0x0,0x74,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x15,0x0,0x0,0x0,0x65,0x0,0x78,0x0,
0x70,0x0,0x72,0x0,0x65,0x0,0x73,0x0,
0x73,0x0,0x69,0x0,0x6f,0x0,0x6e,0x0,
0x20,0x0,0x66,0x0,0x6f,0x0,0x72,0x0,
0x20,0x0,0x68,0x0,0x65,0x0,0x69,0x0,
0x67,0x0,0x68,0x0,0x74,0x0,0x0,0x0,
0x5,0x0,0x0,0x0,0x63,0x0,0x6f,0x0,
0x6c,0x0,0x6f,0x0,0x72,0x0,0x0,0x0,
0x5,0x0,0x0,0x0,0x62,0x0,0x6c,0x0,
0x61,0x0,0x63,0x0,0x6b,0x0,0x0,0x0,
0x10,0x0,0x0,0x0,0x68,0x0,0x6f,0x0,
0x72,0x0,0x69,0x0,0x7a,0x0,0x6f,0x0,
0x6e,0x0,0x74,0x0,0x61,0x0,0x6c,0x0,
0x43,0x0,0x65,0x0,0x6e,0x0,0x74,0x0,
0x65,0x0,0x72,0x0,0x0,0x0,0x0,0x0,
0x1f,0x0,0x0,0x0,0x65,0x0,0x78,0x0,
0x70,0x0,0x72,0x0,0x65,0x0,0x73,0x0,
0x73,0x0,0x69,0x0,0x6f,0x0,0x6e,0x0,
0x20,0x0,0x66,0x0,0x6f,0x0,0x72,0x0,
0x20,0x0,0x68,0x0,0x6f,0x0,0x72,0x0,
0x69,0x0,0x7a,0x0,0x6f,0x0,0x6e,0x0,
0x74,0x0,0x61,0x0,0x6c,0x0,0x43,0x0,
0x65,0x0,0x6e,0x0,0x74,0x0,0x65,0x0,
0x72,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x6,0x0,0x0,0x0,0x62,0x0,0x6f,0x0,
0x74,0x0,0x74,0x0,0x6f,0x0,0x6d,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x15,0x0,0x0,0x0,0x65,0x0,0x78,0x0,
0x70,0x0,0x72,0x0,0x65,0x0,0x73,0x0,
0x73,0x0,0x69,0x0,0x6f,0x0,0x6e,0x0,
0x20,0x0,0x66,0x0,0x6f,0x0,0x72,0x0,
0x20,0x0,0x62,0x0,0x6f,0x0,0x74,0x0,
0x74,0x0,0x6f,0x0,0x6d,0x0,0x0,0x0,
0x7,0x0,0x0,0x0,0x61,0x0,0x6e,0x0,
0x63,0x0,0x68,0x0,0x6f,0x0,0x72,0x0,
0x73,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0xc,0x0,0x0,0x0,0x61,0x0,0x6e,0x0,
0x74,0x0,0x69,0x0,0x61,0x0,0x6c,0x0,
0x69,0x0,0x61,0x0,0x73,0x0,0x69,0x0,
0x6e,0x0,0x67,0x0,0x0,0x0,0x0,0x0,
0x8,0x0,0x0,0x0,0x72,0x0,0x6f,0x0,
0x74,0x0,0x61,0x0,0x74,0x0,0x69,0x0,
0x6f,0x0,0x6e,0x0,0x0,0x0,0x0,0x0,
0x17,0x0,0x0,0x0,0x65,0x0,0x78,0x0,
0x70,0x0,0x72,0x0,0x65,0x0,0x73,0x0,
0x73,0x0,0x69,0x0,0x6f,0x0,0x6e,0x0,
0x20,0x0,0x66,0x0,0x6f,0x0,0x72,0x0,
0x20,0x0,0x72,0x0,0x6f,0x0,0x74,0x0,
0x61,0x0,0x74,0x0,0x69,0x0,0x6f,0x0,
0x6e,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0xe,0x0,0x0,0x0,0x76,0x0,0x65,0x0,
0x72,0x0,0x74,0x0,0x69,0x0,0x63,0x0,
0x61,0x0,0x6c,0x0,0x43,0x0,0x65,0x0,
0x6e,0x0,0x74,0x0,0x65,0x0,0x72,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x1,0x0,0x0,0x0,0x10,0x0,0x0,0x0,
0x3,0x0,0x0,0x0,0x24,0x0,0x0,0x0,
0x1,0x0,0x0,0x0,0x1,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x1,0x0,0x10,0x0,
0xff,0xff,0x0,0x0,0x30,0x0,0x0,0x0,
0x18,0x1,0x0,0x0,0xe8,0x1,0x0,0x0,
0x2,0x0,0x0,0x0,0x3,0x0,0x0,0x0,
0x0,0x0,0xff,0xff,0xff,0xff,0xff,0xff,
0x0,0x0,0x2,0x0,0x54,0x0,0x0,0x0,
0x54,0x0,0x0,0x0,0x6c,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x6c,0x0,0x0,0x0,
0x6c,0x0,0x0,0x0,0x0,0x0,0x5,0x0,
0x6c,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0xe4,0x0,0x0,0x0,0x3,0x0,0x10,0x0,
0x4,0x0,0x50,0x0,0xe4,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xe4,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x4,0x0,0x0,0x0,
0x2,0x0,0x0,0x20,0x6,0x0,0x50,0x0,
0x5,0x0,0x0,0x0,0x2,0x0,0x0,0x20,
0x7,0x0,0x50,0x0,0x11,0x0,0x0,0x0,
0x0,0x0,0x1,0x0,0x1,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x13,0x0,0x50,0x0,
0x13,0x0,0x30,0x1,0x12,0x0,0x0,0x0,
0x0,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x12,0x0,0x50,0x0,
0x12,0x0,0xf0,0x0,0x5,0x0,0x0,0x0,
0x0,0x0,0x2,0x0,0x1,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x7,0x0,0x20,0x1,
0x7,0x0,0xf0,0x1,0x4,0x0,0x0,0x0,
0x0,0x0,0x2,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x6,0x0,0x20,0x1,
0x6,0x0,0x90,0x1,0x0,0x0,0x0,0x0,
0x0,0x0,0x8,0x0,0x1,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x8,0x0,0x50,0x0,
0x8,0x0,0x50,0x0,0x0,0x0,0x0,0x0,
0x6,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0xff,0xff,0xff,0xff,0xff,0xff,
0x0,0x0,0x0,0x0,0x54,0x0,0x0,0x0,
0x54,0x0,0x0,0x0,0x54,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x54,0x0,0x0,0x0,
0x54,0x0,0x0,0x0,0x0,0x0,0x5,0x0,
0x54,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0xcc,0x0,0x0,0x0,0x8,0x0,0x50,0x0,
0x0,0x0,0x0,0x0,0xcc,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xcc,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x11,0x0,0x0,0x0,
0x0,0x0,0x1,0x0,0x1,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x10,0x0,0x90,0x0,
0x10,0x0,0x70,0x1,0xa,0x0,0x0,0x0,
0x0,0x0,0x3,0x0,0x0,0x0,0x0,0x0,
0xb,0x0,0x0,0x0,0xb,0x0,0x90,0x0,
0xb,0x0,0x0,0x1,0x8,0x0,0x0,0x0,
0x0,0x0,0x7,0x0,0x1,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xa,0x0,0x90,0x0,
0xa,0x0,0x10,0x1,0x7,0x0,0x0,0x0,
0x0,0x0,0x2,0x0,0x2,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x9,0x0,0x90,0x0,
0x9,0x0,0x0,0x1,0x10,0x0,0x0,0x0,
0x0,0x0,0xa,0x0,0x2,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xc,0x0,0x90,0x0,
0xc,0x0,0x90,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x0,0x0,0xff,0xff,0xff,0xff,0xff,0xff,
0x0,0x0,0x0,0x0,0x54,0x0,0x0,0x0,
0x54,0x0,0x0,0x0,0x54,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x54,0x0,0x0,0x0,
0x54,0x0,0x0,0x0,0x0,0x0,0x2,0x0,
0x54,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
0x84,0x0,0x0,0x0,0xc,0x0,0x90,0x0,
0x0,0x0,0x0,0x0,0x84,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0x84,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xe,0x0,0x0,0x0,
0x0,0x0,0x7,0x0,0x3,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xe,0x0,0xd0,0x0,
0xe,0x0,0x50,0x1,0xc,0x0,0x0,0x0,
0x0,0x0,0x7,0x0,0x2,0x0,0x0,0x0,
0x0,0x0,0x0,0x0,0xd,0x0,0xd0,0x0,
0xd,0x0,0xf0,0x1,0x0,0x0,0x0,0x0
};
QT_WARNING_PUSH
QT_WARNING_DISABLE_MSVC(4573)

template <typename Binding>
void wrapCall(const QQmlPrivate::AOTCompiledContext *aotContext, void *dataPtr, void **argumentsPtr, Binding &&binding)
{
    using return_type = std::invoke_result_t<Binding, const QQmlPrivate::AOTCompiledContext *, void **>;
    if constexpr (std::is_same_v<return_type, void>) {
       Q_UNUSED(dataPtr)
       binding(aotContext, argumentsPtr);
    } else {
        if (dataPtr) {
           new (dataPtr) return_type(binding(aotContext, argumentsPtr));
        } else {
           binding(aotContext, argumentsPtr);
        }
    }
}
extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[] = {
{ 0, QMetaType::fromType<double>(), {  }, 
    [](const QQmlPrivate::AOTCompiledContext *context, void *data, void **argv) {
        wrapCall(context, data, argv, [](const QQmlPrivate::AOTCompiledContext *aotContext, void **argumentsPtr) {
Q_UNUSED(aotContext)
Q_UNUSED(argumentsPtr)
// expression for rotation at line 18, column 5
double r8_0;
double r2_0;
double r7_0;
double r9_0;
// generate_MoveConst
r7_0 = double(360);
// generate_LoadQmlContextPropertyLookup
{
int retrieved;
while (!aotContext->loadScopeObjectPropertyLookup(0, &retrieved)) {
aotContext->setInstructionPointer(5);
aotContext->initLoadScopeObjectPropertyLookup(0, QMetaType::fromType<int>());
if (aotContext->engine->hasError())
    return double();
}
r2_0 = double(retrieved);
}
// generate_Div
r2_0 = (std::move(r7_0) / std::move(r2_0));
// generate_StoreReg
r8_0 = std::move(r2_0);
// generate_LoadQmlContextPropertyLookup
{
int retrieved;
while (!aotContext->loadScopeObjectPropertyLookup(1, &retrieved)) {
aotContext->setInstructionPointer(11);
aotContext->initLoadScopeObjectPropertyLookup(1, QMetaType::fromType<int>());
if (aotContext->engine->hasError())
    return double();
}
r2_0 = double(retrieved);
}
// generate_StoreReg
r9_0 = std::move(r2_0);
// generate_LoadQmlContextPropertyLookup
{
int retrieved;
while (!aotContext->loadScopeObjectPropertyLookup(2, &retrieved)) {
aotContext->setInstructionPointer(15);
aotContext->initLoadScopeObjectPropertyLookup(2, QMetaType::fromType<int>());
if (aotContext->engine->hasError())
    return double();
}
r2_0 = double(retrieved);
}
// generate_Mod
r2_0 = (QJSPrimitiveValue(std::move(r9_0)) % QJSPrimitiveValue(std::move(r2_0))).toDouble();
// generate_Mul
r2_0 = (std::move(r8_0) * std::move(r2_0));
// generate_Ret
return r2_0;
});}
 },{ 1, QMetaType::fromType<double>(), {  }, 
    [](const QQmlPrivate::AOTCompiledContext *context, void *data, void **argv) {
        wrapCall(context, data, argv, [](const QQmlPrivate::AOTCompiledContext *aotContext, void **argumentsPtr) {
Q_UNUSED(aotContext)
Q_UNUSED(argumentsPtr)
// expression for height at line 10, column 9
double r2_1;
double r7_0;
QObject *r2_0;
// generate_LoadQmlContextPropertyLookup
while (!aotContext->loadContextIdLookup(3, &r2_0)) {
aotContext->setInstructionPointer(2);
aotContext->initLoadContextIdLookup(3);
if (aotContext->engine->hasError())
    return double();
}
// generate_GetLookup
while (!aotContext->getObjectLookup(4, r2_0, &r2_1)) {
aotContext->setInstructionPointer(4);
aotContext->initGetObjectLookup(4, r2_0, QMetaType::fromType<double>());
if (aotContext->engine->hasError())
    return double();
}
// generate_StoreReg
r7_0 = std::move(r2_1);
// generate_LoadConst
r2_1 = 0.40000000000000002;
// generate_Mul
r2_1 = (std::move(r7_0) * std::move(r2_1));
// generate_Ret
return r2_1;
});}
 },{ 2, QMetaType::fromType<QVariant>(), {  }, 
    [](const QQmlPrivate::AOTCompiledContext *context, void *data, void **argv) {
        wrapCall(context, data, argv, [](const QQmlPrivate::AOTCompiledContext *aotContext, void **argumentsPtr) {
Q_UNUSED(aotContext)
Q_UNUSED(argumentsPtr)
// expression for horizontalCenter at line 13, column 13
QObject *r2_0;
QVariant r2_1;
// generate_LoadQmlContextPropertyLookup
while (!aotContext->loadContextIdLookup(5, &r2_0)) {
aotContext->setInstructionPointer(2);
aotContext->initLoadContextIdLookup(5);
if (aotContext->engine->hasError())
    return QVariant();
}
// generate_GetLookup
r2_1 = QVariant(aotContext->lookupResultMetaType(6));
while (!aotContext->getObjectLookup(6, r2_0, r2_1.data())) {
aotContext->setInstructionPointer(4);
aotContext->initGetObjectLookup(6, r2_0, r2_1.metaType());
if (aotContext->engine->hasError())
    return QVariant();
r2_1 = QVariant(aotContext->lookupResultMetaType(6));
}
// generate_Ret
if (!r2_1.isValid())
    aotContext->setReturnValueUndefined();
return r2_1;
});}
 },{ 3, QMetaType::fromType<QVariant>(), {  }, 
    [](const QQmlPrivate::AOTCompiledContext *context, void *data, void **argv) {
        wrapCall(context, data, argv, [](const QQmlPrivate::AOTCompiledContext *aotContext, void **argumentsPtr) {
Q_UNUSED(aotContext)
Q_UNUSED(argumentsPtr)
// expression for bottom at line 14, column 13
QObject *r2_0;
QVariant r2_1;
// generate_LoadQmlContextPropertyLookup
while (!aotContext->loadContextIdLookup(7, &r2_0)) {
aotContext->setInstructionPointer(2);
aotContext->initLoadContextIdLookup(7);
if (aotContext->engine->hasError())
    return QVariant();
}
// generate_GetLookup
r2_1 = QVariant(aotContext->lookupResultMetaType(8));
while (!aotContext->getObjectLookup(8, r2_0, r2_1.data())) {
aotContext->setInstructionPointer(4);
aotContext->initGetObjectLookup(8, r2_0, r2_1.metaType());
if (aotContext->engine->hasError())
    return QVariant();
r2_1 = QVariant(aotContext->lookupResultMetaType(8));
}
// generate_Ret
if (!r2_1.isValid())
    aotContext->setReturnValueUndefined();
return r2_1;
});}
 },{ 0, QMetaType::fromType<void>(), {}, nullptr }};
QT_WARNING_POP
}
}
