.class final Lo/DnsSdTxtRecord$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DnsSdTxtRecord;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/DnsSdTxtRecord;


# direct methods
.method constructor <init>(Lo/DnsSdTxtRecord;)V
    .locals 0

    iput-object p1, p0, Lo/DnsSdTxtRecord$ActionBar;->b:Lo/DnsSdTxtRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 20
    iget-object v0, p0, Lo/DnsSdTxtRecord$ActionBar;->b:Lo/DnsSdTxtRecord;

    invoke-virtual {v0}, Lo/DnsSdTxtRecord;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 21
    iget-object v0, p0, Lo/DnsSdTxtRecord$ActionBar;->b:Lo/DnsSdTxtRecord;

    invoke-virtual {v0}, Lo/DnsSdTxtRecord;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lo/DnsSdTxtRecord$ActionBar;->b:Lo/DnsSdTxtRecord;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/DnsSdTxtRecord;->a(Lo/DnsSdTxtRecord;Ljava/lang/Runnable;)V

    return-void
.end method
