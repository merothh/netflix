.class Lo/NetworkOnMainThreadException$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NetworkOnMainThreadException;->c(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lo/NetworkOnMainThreadException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic c:Lo/NetworkOnMainThreadException;


# direct methods
.method constructor <init>(Lo/NetworkOnMainThreadException;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lo/NetworkOnMainThreadException$5;->c:Lo/NetworkOnMainThreadException;

    iput-object p2, p0, Lo/NetworkOnMainThreadException$5;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lo/NetworkOnMainThreadException$5;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 371
    iget-object p1, p0, Lo/NetworkOnMainThreadException$5;->c:Lo/NetworkOnMainThreadException;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/NetworkOnMainThreadException;->c(I)V

    return-void
.end method
