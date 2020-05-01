.class public final enum Lcom/netflix/mediaclient/net/NetworkRequestType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/net/NetworkRequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum B:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum C:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum D:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum E:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum F:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum G:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum H:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum I:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum J:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field private static final synthetic M:[Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum a:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum b:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum c:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum d:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum e:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum f:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum g:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum h:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum i:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum j:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum k:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum l:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum m:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum n:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum o:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum p:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum q:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum r:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum s:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum t:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum u:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum v:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum w:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum x:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum y:Lcom/netflix/mediaclient/net/NetworkRequestType;

.field public static final enum z:Lcom/netflix/mediaclient/net/NetworkRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/4 v1, 0x0

    const-string v2, "PLAY_MANIFEST"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->e:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/4 v2, 0x1

    const-string v3, "PLAY_LICENSE"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->d:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/4 v3, 0x2

    const-string v4, "PLAY_PREFETCH_MANIFEST"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->b:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/4 v4, 0x3

    const-string v5, "PLAY_PREFETCH_LICENSE"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->c:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/4 v5, 0x4

    const-string v6, "PLAY_OTHER"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->a:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/4 v6, 0x5

    const-string v7, "BROWSE_PREFETCH"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->i:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/4 v7, 0x6

    const-string v8, "BROWSE"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->j:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/4 v8, 0x7

    const-string v9, "BROWSE_LOG"

    invoke-direct {v0, v9, v8}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->h:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v9, 0x8

    const-string v10, "CONFIG"

    invoke-direct {v0, v10, v9}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->g:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v10, 0x9

    const-string v11, "AUI"

    invoke-direct {v0, v11, v10}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->f:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v11, 0xa

    const-string v12, "PING"

    invoke-direct {v0, v12, v11}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->m:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v12, 0xb

    const-string v13, "PDS_EVENT"

    invoke-direct {v0, v13, v12}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->k:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v13, 0xc

    const-string v14, "PDS_KEEP_ALIVE"

    invoke-direct {v0, v14, v13}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->l:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v14, 0xd

    const-string v15, "PDS_KEEP_ALIVE_BACKGROUND"

    invoke-direct {v0, v15, v14}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->o:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v15, 0xe

    const-string v14, "LOG_CL"

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->n:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "LOG_CLV2"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->p:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "LOG_ADV_ID"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->t:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "LOG_PRESENTATION"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->q:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "LOG_BLOB"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->r:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "LOG"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->s:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "RELEASE_LICENSE"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->u:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "API"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->y:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "LOG_VOIP"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONFIG_VOIP"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->w:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "VERIFY_LOGIN"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->x:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_AUDIO"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->B:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_VIDEO"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->C:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_AUDIO_PREFETCH"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->D:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_VIDEO_PREFETCH"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->A:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_AUDIO_DOWNLOAD"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->z:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_VIDEO_DOWNLOAD"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->F:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_TRICKPLAY_DOWNLOAD"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->G:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_SUBTITLES_DOWNLOAD"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->H:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_SUBTITLES"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->E:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "CONTENT_BOXART"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->I:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    const-string v14, "UNKNOWN"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lcom/netflix/mediaclient/net/NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->J:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v0, 0x24

    new-array v0, v0, [Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 6
    sget-object v14, Lcom/netflix/mediaclient/net/NetworkRequestType;->e:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->d:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->b:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->c:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->a:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->i:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->j:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->h:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->g:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->f:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->m:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->k:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->l:Lcom/netflix/mediaclient/net/NetworkRequestType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->o:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->n:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->p:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->t:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->q:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->r:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->s:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->u:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->y:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->v:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->w:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->x:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->B:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->C:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->D:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->A:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->z:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->F:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->G:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->H:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->E:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->I:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->J:Lcom/netflix/mediaclient/net/NetworkRequestType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->M:[Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 60
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/net/NetworkRequestType;->values()[Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 61
    invoke-virtual {v4}, Lcom/netflix/mediaclient/net/NetworkRequestType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "java.lang.Object"

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 67
    sget-object p0, Lcom/netflix/mediaclient/net/NetworkRequestType;->y:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/net/NetworkRequestType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->M:[Lcom/netflix/mediaclient/net/NetworkRequestType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/net/NetworkRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method
