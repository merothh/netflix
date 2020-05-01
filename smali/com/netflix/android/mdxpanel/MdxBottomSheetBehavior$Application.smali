.class public final Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "MdxBottomSheetBehavior"

    .line 153
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;)Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_2

    .line 161
    check-cast p1, Lcom/netflix/android/mdxpanel/MdxBottomSheetBehavior;

    return-object p1

    .line 160
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with MdxBottomSheetBehavior"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 157
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
