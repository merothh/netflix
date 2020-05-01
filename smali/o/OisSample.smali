.class public Lo/OisSample;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z = false

.field private static c:Lo/RggbChannelVector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.facebook.imagepipeline.nativecode.WebpTranscoderImpl"

    .line 22
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RggbChannelVector;

    sput-object v0, Lo/OisSample;->c:Lo/RggbChannelVector;

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lo/OisSample;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lo/OisSample;->a:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lo/RggbChannelVector;
    .locals 1

    .line 31
    sget-object v0, Lo/OisSample;->c:Lo/RggbChannelVector;

    return-object v0
.end method
