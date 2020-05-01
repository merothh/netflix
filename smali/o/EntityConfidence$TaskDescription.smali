.class public final Lo/EntityConfidence$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EntityConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/EntityConfidence$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;)Lo/EntityConfidence;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "/aui/pathEvaluator/mobile/latest"

    .line 15
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/akz;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    new-instance v1, Lo/EntityConfidence;

    .line 19
    invoke-static {p1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "AndroidManifestUtils.getVersion(context)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "androidNative"

    .line 17
    invoke-direct {v1, v2, p1, v0}, Lo/EntityConfidence;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
