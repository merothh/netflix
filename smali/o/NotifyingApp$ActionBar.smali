.class final Lo/NotifyingApp$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NotifyingApp;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/NotifyingApp;


# direct methods
.method constructor <init>(Lo/NotifyingApp;)V
    .locals 0

    iput-object p1, p0, Lo/NotifyingApp$ActionBar;->e:Lo/NotifyingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lo/NotifyingApp$ActionBar;->e:Lo/NotifyingApp;

    invoke-virtual {p1}, Lo/NotifyingApp;->dismiss()V

    return-void
.end method
