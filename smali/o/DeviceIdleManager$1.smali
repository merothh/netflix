.class public final Lo/DeviceIdleManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Filterable$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DeviceIdleManager;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field final synthetic d:Lo/DeviceIdleManager;


# direct methods
.method constructor <init>(Lo/DeviceIdleManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/DeviceIdleManager$1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(Lo/Filterable;)V
    .locals 1

    const-string v0, "netflixCancellableSeekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lo/DeviceIdleManager$1;->c:Z

    .line 127
    iget-object p1, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    sget-object v0, Lo/CommonClock$PictureInPictureParams;->e:Lo/CommonClock$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lo/DeviceIdleManager;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lo/Filterable;I)V
    .locals 1

    const-string v0, "netflixCancellableSeekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p0, p1, p2}, Lo/Filterable$TaskDescription$ActionBar;->b(Lo/Filterable$TaskDescription;Lo/Filterable;I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 132
    iget-object p1, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    new-instance p3, Lo/CommonClock$TaskStackBuilder;

    invoke-direct {p3, p2}, Lo/CommonClock$TaskStackBuilder;-><init>(I)V

    invoke-virtual {p1, p3}, Lo/DeviceIdleManager;->e(Ljava/lang/Object;)V

    .line 134
    :cond_0
    iget-object p1, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    invoke-static {p1}, Lo/DeviceIdleManager;->a(Lo/DeviceIdleManager;)Lo/Filterable;

    move-result-object p2

    invoke-virtual {p2}, Lo/Filterable;->getProgress()I

    move-result p2

    invoke-static {p1, p2}, Lo/DeviceIdleManager;->d(Lo/DeviceIdleManager;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lo/DeviceIdleManager$1;->c:Z

    .line 139
    iget-object p1, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/DeviceIdleManager;->a(Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lo/DeviceIdleManager$1;->c:Z

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    invoke-virtual {v0}, Lo/DeviceIdleManager;->t()Lo/alB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    .line 145
    :cond_0
    iget-object v0, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    new-instance v1, Lo/CommonClock$AssistContent;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-direct {v1, p1}, Lo/CommonClock$AssistContent;-><init>(I)V

    invoke-virtual {v0, v1}, Lo/DeviceIdleManager;->e(Ljava/lang/Object;)V

    .line 148
    :cond_1
    iget-object p1, p0, Lo/DeviceIdleManager$1;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 149
    iget-object p1, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    invoke-static {p1}, Lo/DeviceIdleManager;->a(Lo/DeviceIdleManager;)Lo/Filterable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Filterable;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lo/DeviceIdleManager;->d(Lo/DeviceIdleManager;I)V

    .line 150
    iget-object p1, p0, Lo/DeviceIdleManager$1;->d:Lo/DeviceIdleManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/DeviceIdleManager;->a(Z)V

    return-void
.end method
