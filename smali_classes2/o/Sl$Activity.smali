.class public final Lo/Sl$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sl;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Sl;


# direct methods
.method constructor <init>(Lo/Sl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lo/Sl$Activity;->b:Lo/Sl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/Sl$Activity;->b:Lo/Sl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Sl;->a(Lo/Sl;Z)V

    return-void
.end method
