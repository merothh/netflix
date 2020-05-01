.class public final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->setTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $colorResources$inlined:Lkotlin/Pair;

.field final synthetic $it:Lo/Magnifier;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lo/Magnifier;Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lkotlin/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;->$it:Lo/Magnifier;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;->$colorResources$inlined:Lkotlin/Pair;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;->$it:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;->$it:Lo/Magnifier;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$setTheme$$inlined$let$lambda$1;->$colorResources$inlined:Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->setAllTextColor(Landroid/view/View;I)V

    return-void
.end method
