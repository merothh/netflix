.class public final Lo/TextValueSanitizer$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TextValueSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/TextValueSanitizer$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Unit>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lo/ir;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Lo/ir;

    invoke-direct {v1, v0, p1}, Lo/ir;-><init>(Lio/reactivex/subjects/PublishSubject;Landroid/content/Context;)V

    .line 41
    invoke-virtual {v1}, Lo/ir;->e()V

    .line 43
    new-instance p1, Lo/TextValueSanitizer$TaskDescription$TaskDescription;

    invoke-direct {p1, v0}, Lo/TextValueSanitizer$TaskDescription$TaskDescription;-><init>(Lio/reactivex/subjects/PublishSubject;)V

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
