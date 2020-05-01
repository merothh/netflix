.class final Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method constructor <init>(Landroid/graphics/PorterDuffColorFilter;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;->e:Landroid/graphics/PorterDuffColorFilter;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;->b:Landroid/view/View;

    iput p3, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;->b:Landroid/view/View;

    check-cast v0, Lo/Cursor;

    invoke-virtual {v0}, Lo/Cursor;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "innerView.compoundDrawables[k].mutate()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;->e:Landroid/graphics/PorterDuffColorFilter;

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
