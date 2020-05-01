.class final Lo/WY$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WY;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/WY;


# direct methods
.method constructor <init>(Lo/WY;)V
    .locals 0

    iput-object p1, p0, Lo/WY$1;->a:Lo/WY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 33
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 34
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 35
    sget-object v1, Lcom/netflix/cl/model/AppView;->playbackSpeedButton:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    .line 34
    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 37
    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 39
    iget-object p1, p0, Lo/WY$1;->a:Lo/WY;

    sget-object v0, Lo/UU$ApplicationInfo;->c:Lo/UU$ApplicationInfo;

    invoke-virtual {p1, v0}, Lo/WY;->e(Ljava/lang/Object;)V

    return-void
.end method
