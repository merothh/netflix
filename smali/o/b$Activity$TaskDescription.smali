.class public final Lo/b$Activity$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/YearPickerView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/b$Activity;->b()Lo/b$Activity$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V
    .locals 1

    const-string v0, "interactiveImageTracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 0

    return-void
.end method
