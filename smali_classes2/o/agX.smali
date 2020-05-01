.class public Lo/agX;
.super Lo/agT;
.source ""


# static fields
.field public static final j:Lo/agT;

.field public static final k:Lo/agT;

.field public static final l:Lo/agT;

.field public static final m:Lo/agT;

.field public static final n:Lo/agT;

.field public static final o:Lo/agT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lo/agX;

    const/4 v1, 0x1

    const-string v2, "MGK"

    invoke-direct {v0, v2, v1, v1}, Lo/agX;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agX;->j:Lo/agT;

    .line 15
    new-instance v0, Lo/agX;

    const-string v2, "MGK_PROFILE"

    invoke-direct {v0, v2, v1, v1}, Lo/agX;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agX;->k:Lo/agT;

    .line 17
    new-instance v0, Lo/agX;

    const/4 v2, 0x0

    const-string v3, "ANYCAST"

    invoke-direct {v0, v3, v2, v1}, Lo/agX;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agX;->o:Lo/agT;

    .line 19
    new-instance v0, Lo/agX;

    const-string v3, "FAIRPLAY_MGK"

    invoke-direct {v0, v3, v1, v1}, Lo/agX;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agX;->n:Lo/agT;

    .line 21
    new-instance v0, Lo/agX;

    const-string v1, "WIDEVINE"

    invoke-direct {v0, v1, v2, v2}, Lo/agX;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agX;->l:Lo/agT;

    .line 23
    new-instance v0, Lo/agX;

    const-string v1, "MIGRATION"

    invoke-direct {v0, v1, v2, v2}, Lo/agX;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agX;->m:Lo/agT;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method
