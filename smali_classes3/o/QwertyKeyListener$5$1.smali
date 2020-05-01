.class final Lo/QwertyKeyListener$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QwertyKeyListener$5;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/QwertyKeyListener$5;


# direct methods
.method constructor <init>(Lo/QwertyKeyListener$5;)V
    .locals 0

    iput-object p1, p0, Lo/QwertyKeyListener$5$1;->b:Lo/QwertyKeyListener$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/QwertyKeyListener$5$1;->b:Lo/QwertyKeyListener$5;

    iget-object v0, v0, Lo/QwertyKeyListener$5;->c:Lo/QwertyKeyListener;

    invoke-virtual {v0}, Lo/QwertyKeyListener;->j()Lo/MultiTapKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Lo/MultiTapKeyListener;->notifyDataSetChanged()V

    .line 44
    iget-object v0, p0, Lo/QwertyKeyListener$5$1;->b:Lo/QwertyKeyListener$5;

    iget-object v0, v0, Lo/QwertyKeyListener$5;->c:Lo/QwertyKeyListener;

    invoke-virtual {v0}, Lo/QwertyKeyListener;->hasAcceptedRequiredCheckBoxes()Z

    return-void
.end method
