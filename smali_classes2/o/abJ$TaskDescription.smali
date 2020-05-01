.class final Lo/abJ$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abJ;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/abJ;


# direct methods
.method constructor <init>(Lo/abJ;)V
    .locals 0

    iput-object p1, p0, Lo/abJ$TaskDescription;->d:Lo/abJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lo/abJ$TaskDescription;->d:Lo/abJ;

    invoke-static {p1}, Lo/abJ;->e(Lo/abJ;)V

    return-void
.end method
