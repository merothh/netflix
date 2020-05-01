.class final Lo/Fe$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fe;->c(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo/Fe;

.field final synthetic e:Lo/DQ;


# direct methods
.method constructor <init>(Lo/Fe;Lo/DQ;I)V
    .locals 0

    iput-object p1, p0, Lo/Fe$Activity;->b:Lo/Fe;

    iput-object p2, p0, Lo/Fe$Activity;->e:Lo/DQ;

    iput p3, p0, Lo/Fe$Activity;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lo/Fe$Activity;->e:Lo/DQ;

    invoke-virtual {p1}, Lo/DQ;->e()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lo/Fe$Activity;->b:Lo/Fe;

    sget-object v0, Lo/DG$LoaderManager;->d:Lo/DG$LoaderManager;

    invoke-virtual {p1, v0}, Lo/Fe;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lo/Fe$Activity;->b:Lo/Fe;

    sget-object v0, Lo/DG$PendingIntent;->c:Lo/DG$PendingIntent;

    invoke-virtual {p1, v0}, Lo/Fe;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lo/Fe$Activity;->b:Lo/Fe;

    sget-object v0, Lo/DG$FragmentManager;->b:Lo/DG$FragmentManager;

    invoke-virtual {p1, v0}, Lo/Fe;->e(Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object p1, p0, Lo/Fe$Activity;->b:Lo/Fe;

    iget v0, p0, Lo/Fe$Activity;->a:I

    invoke-virtual {p1, v0}, Lo/Fe;->e(I)V

    return-void
.end method
