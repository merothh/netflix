.class public final Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

.field final synthetic b:I

.field final synthetic c:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;ILkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            ")V"
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    iput p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->b:I

    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b()Lo/Magnifier;

    move-result-object p1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->b:I

    invoke-virtual {p1, v0}, Lo/Magnifier;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b()Lo/Magnifier;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    invoke-virtual {p1, v0}, Lo/Magnifier;->setTranslationX(F)V

    .line 373
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b()Lo/Magnifier;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    invoke-virtual {p1, v0}, Lo/Magnifier;->setTranslationY(F)V

    .line 374
    iget p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->b:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 375
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a()Lo/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fragment;->b()V

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 365
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 366
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V

    .line 367
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b()Lo/Magnifier;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Magnifier;->setVisibility(I)V

    return-void
.end method
