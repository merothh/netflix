.class final Lo/Sd$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sd;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Sd;


# direct methods
.method constructor <init>(Lo/Sd;)V
    .locals 0

    iput-object p1, p0, Lo/Sd$ActionBar;->e:Lo/Sd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lo/Sd$ActionBar;->e:Lo/Sd;

    invoke-static {p1}, Lo/Sd;->d(Lo/Sd;)V

    return-void
.end method
