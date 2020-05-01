.class public final enum Lfi/iki/elonen/NanoHTTPD$Response$Status;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$Response$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoHTTPD$Response$Status;",
        ">;",
        "Lfi/iki/elonen/NanoHTTPD$Response$Application;"
    }
.end annotation


# static fields
.field public static final enum A:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum B:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum C:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum D:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field private static final synthetic E:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum G:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum H:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum a:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum b:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum c:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum d:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum e:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum f:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum g:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum h:Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum i:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum k:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum l:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum m:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum n:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum o:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum p:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum q:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum r:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum s:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum t:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum u:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum v:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum w:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum x:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum y:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum z:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# instance fields
.field private final F:I

.field private final I:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1340
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v1, 0x0

    const-string v2, "SWITCH_PROTOCOL"

    const/16 v3, 0x65

    const-string v4, "Switching Protocols"

    invoke-direct {v0, v2, v1, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->b:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1342
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x1

    const-string v3, "OK"

    const/16 v4, 0xc8

    invoke-direct {v0, v3, v2, v4, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->e:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1343
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v3, 0x2

    const-string v4, "CREATED"

    const/16 v5, 0xc9

    const-string v6, "Created"

    invoke-direct {v0, v4, v3, v5, v6}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->c:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1344
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v4, 0x3

    const-string v5, "ACCEPTED"

    const/16 v6, 0xca

    const-string v7, "Accepted"

    invoke-direct {v0, v5, v4, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->d:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1345
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v5, 0x4

    const-string v6, "NO_CONTENT"

    const/16 v7, 0xcc

    const-string v8, "No Content"

    invoke-direct {v0, v6, v5, v7, v8}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->a:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1346
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v6, 0x5

    const-string v7, "PARTIAL_CONTENT"

    const/16 v8, 0xce

    const-string v9, "Partial Content"

    invoke-direct {v0, v7, v6, v8, v9}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1347
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v7, 0x6

    const-string v8, "MULTI_STATUS"

    const/16 v9, 0xcf

    const-string v10, "Multi-Status"

    invoke-direct {v0, v8, v7, v9, v10}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->i:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1349
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v8, 0x7

    const-string v9, "REDIRECT"

    const/16 v10, 0x12d

    const-string v11, "Moved Permanently"

    invoke-direct {v0, v9, v8, v10, v11}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->g:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1356
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v9, 0x8

    const-string v10, "FOUND"

    const/16 v11, 0x12e

    const-string v12, "Found"

    invoke-direct {v0, v10, v9, v11, v12}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->h:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1358
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v10, 0x9

    const-string v11, "REDIRECT_SEE_OTHER"

    const/16 v12, 0x12f

    const-string v13, "See Other"

    invoke-direct {v0, v11, v10, v12, v13}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->f:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1359
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v11, 0xa

    const-string v12, "NOT_MODIFIED"

    const/16 v13, 0x130

    const-string v14, "Not Modified"

    invoke-direct {v0, v12, v11, v13, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->n:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1360
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v12, 0xb

    const-string v13, "TEMPORARY_REDIRECT"

    const/16 v14, 0x133

    const-string v15, "Temporary Redirect"

    invoke-direct {v0, v13, v12, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->k:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1362
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v13, 0xc

    const-string v14, "BAD_REQUEST"

    const/16 v15, 0x190

    const-string v12, "Bad Request"

    invoke-direct {v0, v14, v13, v15, v12}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->o:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1363
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v12, 0xd

    const-string v14, "UNAUTHORIZED"

    const/16 v15, 0x191

    const-string v13, "Unauthorized"

    invoke-direct {v0, v14, v12, v15, v13}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->l:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1364
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v13, "FORBIDDEN"

    const/16 v14, 0xe

    const/16 v15, 0x193

    const-string v12, "Forbidden"

    invoke-direct {v0, v13, v14, v15, v12}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->m:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1365
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "NOT_FOUND"

    const/16 v13, 0xf

    const/16 v14, 0x194

    const-string v15, "Not Found"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->r:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1366
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "METHOD_NOT_ALLOWED"

    const/16 v13, 0x10

    const/16 v14, 0x195

    const-string v15, "Method Not Allowed"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->t:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1367
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "NOT_ACCEPTABLE"

    const/16 v13, 0x11

    const/16 v14, 0x196

    const-string v15, "Not Acceptable"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->q:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1368
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "REQUEST_TIMEOUT"

    const/16 v13, 0x12

    const/16 v14, 0x198

    const-string v15, "Request Timeout"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->p:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1369
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "CONFLICT"

    const/16 v13, 0x13

    const/16 v14, 0x199

    const-string v15, "Conflict"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->s:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1370
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "GONE"

    const/16 v13, 0x14

    const/16 v14, 0x19a

    const-string v15, "Gone"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->v:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1371
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "LENGTH_REQUIRED"

    const/16 v13, 0x15

    const/16 v14, 0x19b

    const-string v15, "Length Required"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->y:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1372
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "PRECONDITION_FAILED"

    const/16 v13, 0x16

    const/16 v14, 0x19c

    const-string v15, "Precondition Failed"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->u:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1373
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "PAYLOAD_TOO_LARGE"

    const/16 v13, 0x17

    const/16 v14, 0x19d

    const-string v15, "Payload Too Large"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->x:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1374
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v13, 0x18

    const/16 v14, 0x19f

    const-string v15, "Unsupported Media Type"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->w:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1375
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "RANGE_NOT_SATISFIABLE"

    const/16 v13, 0x19

    const/16 v14, 0x1a0

    const-string v15, "Requested Range Not Satisfiable"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->B:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1376
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "EXPECTATION_FAILED"

    const/16 v13, 0x1a

    const/16 v14, 0x1a1

    const-string v15, "Expectation Failed"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->A:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1377
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "TOO_MANY_REQUESTS"

    const/16 v13, 0x1b

    const/16 v14, 0x1ad

    const-string v15, "Too Many Requests"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->z:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1379
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "INTERNAL_ERROR"

    const/16 v13, 0x1c

    const/16 v14, 0x1f4

    const-string v15, "Internal Server Error"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->D:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1380
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "NOT_IMPLEMENTED"

    const/16 v13, 0x1d

    const/16 v14, 0x1f5

    const-string v15, "Not Implemented"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->C:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1381
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "SERVICE_UNAVAILABLE"

    const/16 v13, 0x1e

    const/16 v14, 0x1f7

    const-string v15, "Service Unavailable"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->G:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1382
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v12, "UNSUPPORTED_HTTP_VERSION"

    const/16 v13, 0x1f

    const/16 v14, 0x1f9

    const-string v15, "HTTP Version Not Supported"

    invoke-direct {v0, v12, v13, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->H:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v0, 0x20

    new-array v0, v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1339
    sget-object v12, Lfi/iki/elonen/NanoHTTPD$Response$Status;->b:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v12, v0, v1

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->e:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->c:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v3

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->d:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v4

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->a:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v5

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v6

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->i:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v7

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->g:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v8

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->h:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v9

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->f:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v10

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->n:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v11

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->k:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->o:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->l:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->m:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->r:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->t:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->q:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->p:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->s:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->v:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->y:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->u:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->x:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->w:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->B:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->A:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->z:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->D:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->C:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->G:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->H:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->E:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1389
    iput p3, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->F:I

    .line 1390
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->I:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .line 1339
    const-class v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .line 1339
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->E:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Response$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
