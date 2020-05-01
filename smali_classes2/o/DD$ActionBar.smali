.class public final Lo/DD$ActionBar;
.super Lo/CO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DD$ActionBar$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/DD$ActionBar$TaskDescription;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DD$ActionBar$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DD$ActionBar$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/DD$ActionBar;->d:Lo/DD$ActionBar$TaskDescription;

    return-void
.end method

.method public constructor <init>(ZLcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lo/CO;-><init>()V

    iput-boolean p1, p0, Lo/DD$ActionBar;->e:Z

    iput-object p2, p0, Lo/DD$ActionBar;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 318
    iget-boolean p1, p0, Lo/DD$ActionBar;->e:Z

    if-eqz p1, :cond_0

    const-string p1, "dp-primary-latencyTracker"

    goto :goto_0

    :cond_0
    const-string p1, "dp-secondary-latencyTracker"

    :goto_0
    iput-object p1, p0, Lo/DD$ActionBar;->b:Ljava/lang/String;

    .line 325
    iget-object p1, p0, Lo/DD$ActionBar;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-object p2, p0

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 329
    iget-object v0, p0, Lo/DD$ActionBar;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lo/DD$ActionBar;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected c(ZLcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)Z
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 340
    invoke-interface {p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->vr:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 341
    :goto_0
    iget-boolean v2, p0, Lo/DD$ActionBar;->e:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v2, p0, Lo/DD$ActionBar;->e:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lo/DD$ActionBar;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected f()Z
    .locals 2

    .line 345
    iget-object v0, p0, Lo/DD$ActionBar;->b:Ljava/lang/String;

    const-string v1, "dp-primary-latencyTracker"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/DD$ActionBar;->b:Ljava/lang/String;

    const-string v1, "dp-secondary-latencyTracker"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
