.class final Lo/FileObserver$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FileObserver;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lo/FileObserver;


# direct methods
.method constructor <init>(Lo/FileObserver;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lo/FileObserver$3;->d:Lo/FileObserver;

    iput-object p2, p0, Lo/FileObserver$3;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p8, p4, :cond_0

    .line 114
    iget-object p1, p0, Lo/FileObserver$3;->d:Lo/FileObserver;

    invoke-virtual {p1}, Lo/FileObserver;->p()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lo/FileObserver$3;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
