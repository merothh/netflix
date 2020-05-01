.class final Lo/Dn$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dn;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Dn;


# direct methods
.method constructor <init>(Lo/Dn;)V
    .locals 0

    iput-object p1, p0, Lo/Dn$Application;->b:Lo/Dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lo/Dn$Application;->b:Lo/Dn;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/Dn;->d(Lo/Dn;Z)V

    .line 89
    iget-object p1, p0, Lo/Dn$Application;->b:Lo/Dn;

    invoke-virtual {p1}, Lo/Dn;->dismiss()V

    return-void
.end method
