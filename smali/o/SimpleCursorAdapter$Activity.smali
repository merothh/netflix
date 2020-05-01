.class public final Lo/SimpleCursorAdapter$Activity;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final e:Lo/SimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/SimpleAdapter;Lio/reactivex/subjects/PublishSubject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickItemsSubject"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/SimpleCursorAdapter$Activity;->e:Lo/SimpleAdapter;

    .line 26
    new-instance p2, Lo/SimpleCursorAdapter$Activity$1;

    invoke-direct {p2, p0, p3}, Lo/SimpleCursorAdapter$Activity$1;-><init>(Lo/SimpleCursorAdapter$Activity;Lio/reactivex/subjects/PublishSubject;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lo/SimpleCursorAdapter$Activity;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast v0, Lo/ImageSwitcher;

    .line 34
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "itemView"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lo/SimpleCursorAdapter$Activity;->itemView:Landroid/view/View;

    invoke-static {p2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/ImageSwitcher;

    invoke-virtual {p2}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->g:I

    invoke-virtual {v0, p1, p2}, Lo/ImageSwitcher;->setTextAppearance(Landroid/content/Context;I)V

    .line 37
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->be:I

    invoke-virtual {v0, p1, v1, v1, v1}, Lo/ImageSwitcher;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 38
    invoke-virtual {v0, v1, v1, v1, v1}, Lo/ImageSwitcher;->setPadding(IIII)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p2, p0, Lo/SimpleCursorAdapter$Activity;->itemView:Landroid/view/View;

    invoke-static {p2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/ImageSwitcher;

    invoke-virtual {p2}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->h:I

    invoke-virtual {v0, p1, p2}, Lo/ImageSwitcher;->setTextAppearance(Landroid/content/Context;I)V

    .line 41
    invoke-virtual {v0, v1, v1, v1, v1}, Lo/ImageSwitcher;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 42
    invoke-virtual {v0}, Lo/ImageSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ba:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1, v1, v1, v1}, Lo/ImageSwitcher;->setPadding(IIII)V

    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
