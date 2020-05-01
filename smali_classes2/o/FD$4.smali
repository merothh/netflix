.class final Lo/FD$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FD;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/FD;


# direct methods
.method constructor <init>(Lo/FD;)V
    .locals 0

    iput-object p1, p0, Lo/FD$4;->e:Lo/FD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lo/FD$4;->e:Lo/FD;

    invoke-virtual {p1}, Lo/FD;->o()Lo/UpdateEngine;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    const-class v0, Lo/DG;

    .line 67
    new-instance v1, Lo/DG$AssistContent;

    invoke-direct {v1}, Lo/DG$AssistContent;-><init>()V

    check-cast v1, Lo/VintfObject;

    .line 65
    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lo/FD$4;->e:Lo/FD;

    .line 70
    new-instance v0, Lo/DG$AssistContent;

    invoke-direct {v0}, Lo/DG$AssistContent;-><init>()V

    .line 69
    invoke-virtual {p1, v0}, Lo/FD;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
