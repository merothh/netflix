.class final Lo/HwBlob$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HwBlob;->setOnTooltipClickListener(Lo/HandlerExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/HwBlob;

.field final synthetic e:Lo/HandlerExecutor;


# direct methods
.method constructor <init>(Lo/HwBlob;Lo/HandlerExecutor;)V
    .locals 0

    iput-object p1, p0, Lo/HwBlob$TaskDescription;->c:Lo/HwBlob;

    iput-object p2, p0, Lo/HwBlob$TaskDescription;->e:Lo/HandlerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 495
    iget-object p1, p0, Lo/HwBlob$TaskDescription;->e:Lo/HandlerExecutor;

    iget-object v0, p0, Lo/HwBlob$TaskDescription;->c:Lo/HwBlob;

    invoke-interface {p1, v0}, Lo/HandlerExecutor;->b(Lo/HwBlob;)V

    return-void
.end method
