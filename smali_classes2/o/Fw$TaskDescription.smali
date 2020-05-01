.class final Lo/Fw$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fw;->e(Ljava/lang/String;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Fw;


# direct methods
.method constructor <init>(Lo/Fw;)V
    .locals 0

    iput-object p1, p0, Lo/Fw$TaskDescription;->c:Lo/Fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lo/Fw$TaskDescription;->c:Lo/Fw;

    sget-object v0, Lo/DG$Dialog;->b:Lo/DG$Dialog;

    invoke-virtual {p1, v0}, Lo/Fw;->e(Ljava/lang/Object;)V

    return-void
.end method
