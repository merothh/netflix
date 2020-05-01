.class public abstract Lo/LV;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final h:Lo/aeA;


# instance fields
.field private final A:Lo/DayPickerViewPager;

.field private final B:Landroid/widget/ImageView;

.field private final C:Landroid/widget/TextView;

.field private final D:Landroid/widget/ImageView;

.field private final E:Landroid/widget/ImageView;

.field private final F:Landroid/widget/ImageView;

.field private final G:Lo/DayPickerViewPager;

.field private final H:Lo/DayPickerViewPager;

.field private final I:Landroid/widget/ImageView;

.field private final J:Lo/DayPickerViewPager;

.field private final K:Lo/HorizontalScrollView;

.field private L:Z

.field private final M:Landroid/view/View;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private O:Z

.field private final P:Landroid/widget/TextView;

.field private Q:Z

.field private final R:Landroid/widget/TextView;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/Runnable;

.field private final U:F

.field private V:F

.field private final W:Landroid/view/View;

.field private final X:Landroid/view/View;

.field private Y:Z

.field private Z:Ljava/lang/Boolean;

.field protected final a:Landroid/view/View;

.field private final aa:Landroid/view/View$OnClickListener;

.field private final ab:Lo/RadialTimePickerView$ActionBar;

.field private final ac:Landroid/view/View$OnClickListener;

.field private final ad:Landroid/view/View$OnClickListener;

.field private final ae:Landroid/view/View$OnClickListener;

.field private final af:Landroid/view/View$OnClickListener;

.field private final ag:Landroid/view/View$OnClickListener;

.field private final ah:Landroid/view/View$OnClickListener;

.field private final ai:Landroid/view/View$OnClickListener;

.field private final aj:Landroid/view/View$OnClickListener;

.field private final ak:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final al:Landroid/view/View$OnClickListener;

.field private final am:Landroid/view/View$OnClickListener;

.field protected final b:Landroid/view/ViewGroup;

.field protected final c:Landroid/view/View;

.field protected final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected final e:Landroid/view/View;

.field protected final f:Landroid/widget/ImageView;

.field protected final g:Landroid/widget/TextView;

.field protected final i:Landroid/widget/TextView;

.field protected final j:Landroid/view/View;

.field private final k:Landroid/view/animation/Interpolator;

.field private final l:Lo/Mh;

.field private final m:Lo/LU$TaskDescription;

.field private final n:Lo/LW;

.field private final o:Ljava/lang/String;

.field private p:F

.field private q:I

.field private r:Lo/LT;

.field private s:I

.field private final t:Landroid/view/View;

.field private final u:Landroid/widget/ImageView;

.field private final v:Landroid/widget/TextView;

.field private final w:Lo/RadialTimePickerView;

.field private final x:Landroid/widget/ImageView;

.field private final y:Landroid/widget/TextView;

.field private final z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lo/aeA;

    invoke-direct {v0}, Lo/aeA;-><init>()V

    sput-object v0, Lo/LV;->h:Lo/aeA;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/LW;Lo/Mh;Lo/LU$TaskDescription;)V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lo/LV;->k:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lo/LV;->L:Z

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lo/LV;->O:Z

    .line 144
    iput-boolean v0, p0, Lo/LV;->Q:Z

    .line 159
    iput-boolean v0, p0, Lo/LV;->Y:Z

    const/4 v0, 0x0

    .line 696
    iput-object v0, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    .line 861
    new-instance v1, Lo/LV$6;

    invoke-direct {v1, p0}, Lo/LV$6;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->ab:Lo/RadialTimePickerView$ActionBar;

    .line 930
    new-instance v1, Lo/LV$7;

    invoke-direct {v1, p0}, Lo/LV$7;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->ac:Landroid/view/View$OnClickListener;

    .line 942
    new-instance v1, Lo/LV$12;

    invoke-direct {v1, p0}, Lo/LV$12;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->aa:Landroid/view/View$OnClickListener;

    .line 951
    new-instance v1, Lo/LV$14;

    invoke-direct {v1, p0}, Lo/LV$14;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->ag:Landroid/view/View$OnClickListener;

    .line 980
    new-instance v1, Lo/LV$15;

    invoke-direct {v1, p0}, Lo/LV$15;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->af:Landroid/view/View$OnClickListener;

    .line 989
    new-instance v1, Lo/LV$13;

    invoke-direct {v1, p0}, Lo/LV$13;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->ad:Landroid/view/View$OnClickListener;

    .line 998
    new-instance v1, Lo/LV$11;

    invoke-direct {v1, p0}, Lo/LV$11;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->ah:Landroid/view/View$OnClickListener;

    .line 1007
    new-instance v1, Lo/LV$5;

    invoke-direct {v1, p0}, Lo/LV$5;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->ae:Landroid/view/View$OnClickListener;

    .line 1016
    new-instance v1, Lo/LV$4;

    invoke-direct {v1, p0}, Lo/LV$4;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->ai:Landroid/view/View$OnClickListener;

    .line 1046
    new-instance v1, Lo/LV$1;

    invoke-direct {v1, p0}, Lo/LV$1;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->al:Landroid/view/View$OnClickListener;

    .line 1053
    new-instance v1, Lo/LV$3;

    invoke-direct {v1, p0}, Lo/LV$3;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->am:Landroid/view/View$OnClickListener;

    .line 1072
    new-instance v1, Lo/LV$8;

    invoke-direct {v1, p0}, Lo/LV$8;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->aj:Landroid/view/View$OnClickListener;

    .line 1079
    new-instance v1, Lo/LV$10;

    invoke-direct {v1, p0}, Lo/LV$10;-><init>(Lo/LV;)V

    iput-object v1, p0, Lo/LV;->ak:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const-string v1, "Creating"

    .line 168
    invoke-direct {p0, v1}, Lo/LV;->a(Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v1, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/LV;->o:Ljava/lang/String;

    .line 171
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/LW;

    iput-object p2, p0, Lo/LV;->n:Lo/LW;

    .line 172
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Mh;

    iput-object p2, p0, Lo/LV;->l:Lo/Mh;

    .line 173
    iput-object p4, p0, Lo/LV;->m:Lo/LU$TaskDescription;

    .line 175
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lo/LV;->d()I

    move-result p3

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    .line 177
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bY:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/LV;->e:Landroid/view/View;

    .line 178
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bT:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/LV;->g:Landroid/widget/TextView;

    .line 179
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bQ:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/LV;->i:Landroid/widget/TextView;

    .line 180
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bX:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/LV;->R:Landroid/widget/TextView;

    .line 181
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bP:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/LV;->P:Landroid/widget/TextView;

    .line 183
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bO:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/LV;->t:Landroid/view/View;

    .line 184
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bK:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/LV;->f:Landroid/widget/ImageView;

    .line 186
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bu:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/LV;->z:Landroid/widget/TextView;

    .line 187
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bq:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/LV;->B:Landroid/widget/ImageView;

    .line 188
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bD:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/LV;->j:Landroid/view/View;

    .line 191
    iput-object v0, p0, Lo/LV;->v:Landroid/widget/TextView;

    .line 192
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bF:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/LV;->c:Landroid/view/View;

    .line 193
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bG:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/LV;->I:Landroid/widget/ImageView;

    .line 195
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bL:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/DayPickerViewPager;

    iput-object p2, p0, Lo/LV;->A:Lo/DayPickerViewPager;

    .line 196
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bM:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/LV;->u:Landroid/widget/ImageView;

    .line 197
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bs:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/LV;->a:Landroid/view/View;

    .line 199
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bI:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/LV;->D:Landroid/widget/ImageView;

    .line 200
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bA:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/LV;->E:Landroid/widget/ImageView;

    .line 203
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bW:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/LV;->x:Landroid/widget/ImageView;

    .line 204
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bH:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/LV;->C:Landroid/widget/TextView;

    .line 205
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->bJ:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/LV;->y:Landroid/widget/TextView;

    .line 207
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->kp:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/RadialTimePickerView;

    iput-object p2, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    .line 209
    invoke-static {}, Lo/adq;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 211
    iget-object p3, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->bw:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/DayPickerViewPager;

    iput-object p3, p0, Lo/LV;->H:Lo/DayPickerViewPager;

    .line 212
    iget-object p3, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->br:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/DayPickerViewPager;

    iput-object p3, p0, Lo/LV;->G:Lo/DayPickerViewPager;

    .line 213
    iget-object p3, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->bx:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/DayPickerViewPager;

    iput-object p3, p0, Lo/LV;->J:Lo/DayPickerViewPager;

    .line 214
    iget-object p3, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->bz:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lo/LV;->M:Landroid/view/View;

    goto :goto_0

    .line 216
    :cond_0
    iget-object p3, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->br:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/DayPickerViewPager;

    iput-object p3, p0, Lo/LV;->H:Lo/DayPickerViewPager;

    .line 217
    iput-object v0, p0, Lo/LV;->G:Lo/DayPickerViewPager;

    .line 218
    iput-object v0, p0, Lo/LV;->J:Lo/DayPickerViewPager;

    .line 219
    iput-object v0, p0, Lo/LV;->M:Landroid/view/View;

    .line 222
    :goto_0
    iget-object p3, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->bN:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/HorizontalScrollView;

    iput-object p3, p0, Lo/LV;->K:Lo/HorizontalScrollView;

    .line 224
    iget-object p3, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->by:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lo/LV;->F:Landroid/widget/ImageView;

    .line 228
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object p3

    iput-object p3, p0, Lo/LV;->X:Landroid/view/View;

    .line 229
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingPanelPullView()Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lo/LV;->W:Landroid/view/View;

    .line 230
    iget-object p3, p0, Lo/LV;->K:Lo/HorizontalScrollView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lo/HorizontalScrollView;->getTranslationY()F

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput p3, p0, Lo/LV;->U:F

    .line 231
    iget-object p3, p0, Lo/LV;->W:Landroid/view/View;

    if-eqz p3, :cond_2

    .line 232
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance p4, Lo/LV$2;

    invoke-direct {p4, p0, p1}, Lo/LV$2;-><init>(Lo/LV;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p3, p4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 246
    :cond_2
    invoke-direct {p0}, Lo/LV;->m()V

    .line 247
    invoke-direct {p0}, Lo/LV;->k()V

    .line 248
    invoke-direct {p0}, Lo/LV;->n()V

    .line 250
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 251
    invoke-static {p1}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result p1

    .line 252
    invoke-direct {p0, p3, p2}, Lo/LV;->e(Landroid/content/res/Resources;Z)V

    .line 253
    invoke-direct {p0, p3}, Lo/LV;->a(Landroid/content/res/Resources;)V

    .line 255
    invoke-direct {p0, p2, p1}, Lo/LV;->a(ZZ)V

    .line 256
    invoke-direct {p0, p2}, Lo/LV;->i(Z)V

    .line 257
    iget-object p1, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lo/LV;)Lo/LW;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/LV;->n:Lo/LW;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 728
    iget-object v0, p0, Lo/LV;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lo/LV;->k:Landroid/view/animation/Interpolator;

    .line 730
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 2

    .line 312
    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->t:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->p:I

    .line 313
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lo/LV;->q:I

    .line 314
    iget-object p1, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lo/LV;->s:I

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 793
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 794
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p2, 0x3ecccccd    # 0.4f

    .line 795
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/util/Collection;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    .line 833
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 836
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lo/LV;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lo/LV;->e(I)V

    return-void
.end method

.method static synthetic a(Lo/LV;ZLjava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lo/LV;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 4

    .line 528
    iget-boolean v0, p0, Lo/LV;->O:Z

    const-string v1, "doUpdateSkipIntroButton "

    const-string v2, "MdxMiniPlayerViews"

    if-eq v0, p1, :cond_5

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iput-boolean p1, p0, Lo/LV;->O:Z

    .line 531
    iput-object p2, p0, Lo/LV;->S:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lo/LV;->K:Lo/HorizontalScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 533
    :goto_0
    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 534
    iget-object p1, p0, Lo/LV;->K:Lo/HorizontalScrollView;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_1
    iget-object p1, p0, Lo/LV;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 537
    iget-boolean p2, p0, Lo/LV;->O:Z

    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 538
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->s:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {p2, v0, v1}, Lo/RemoteException;->e(Landroid/view/View;II)V

    goto :goto_1

    .line 540
    :cond_2
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 542
    :goto_1
    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->q:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget-object v0, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 543
    iget-object p2, p0, Lo/LV;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 544
    iget-object p2, p0, Lo/LV;->m:Lo/LU$TaskDescription;

    if-eqz p2, :cond_3

    .line 545
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {p2, p1}, Lo/LU$TaskDescription;->c(I)V

    .line 547
    :cond_3
    invoke-virtual {p0}, Lo/LV;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 548
    iget-boolean p1, p0, Lo/LV;->Q:Z

    if-nez p1, :cond_4

    .line 550
    iget p1, p0, Lo/LV;->V:F

    iget-object p2, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lo/LV;->V:F

    const/4 p1, 0x1

    .line 551
    iput-boolean p1, p0, Lo/LV;->Q:Z

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "slidingPanelYReference = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo/LV;->V:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_4
    invoke-direct {p0}, Lo/LV;->p()V

    goto :goto_2

    .line 557
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ignored"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private a(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/16 p2, 0x258

    invoke-static {p1, p2}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result p1

    iget-object p2, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 305
    invoke-static {p2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p2

    .line 304
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 306
    iget-object p2, p0, Lo/LV;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    iget-object p2, p0, Lo/LV;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/LV;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/LV;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method private b(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 846
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 849
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lo/aeV$TaskDescription;

    invoke-direct {v2, v0}, Lo/aeV$TaskDescription;-><init>(Landroid/view/View;)V

    .line 850
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lo/LV;)F
    .locals 0

    .line 58
    iget p0, p0, Lo/LV;->V:F

    return p0
.end method

.method private c(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 815
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 818
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x0

    .line 819
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lo/DayPickerViewPager;III)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/DayPickerViewPager;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {p1, p2}, Lo/DayPickerViewPager;->setText(I)V

    int-to-float p2, p4

    .line 351
    invoke-virtual {p1, p2}, Lo/DayPickerViewPager;->setTextSize(F)V

    const/4 p2, 0x0

    .line 352
    invoke-virtual {p1, p2}, Lo/DayPickerViewPager;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lo/LV;F)F
    .locals 0

    .line 58
    iput p1, p0, Lo/LV;->V:F

    return p1
.end method

.method static synthetic d(Lo/LV;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/LV;->W:Landroid/view/View;

    return-object p0
.end method

.method private e(F)V
    .locals 2

    mul-float p1, p1, p1

    .line 675
    iget-object v0, p0, Lo/LV;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 677
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(I)V
    .locals 2

    .line 597
    sget-object v0, Lo/LV;->h:Lo/aeA;

    invoke-virtual {v0, p1}, Lo/aeA;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lo/LV;->C:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 602
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    :cond_0
    iget-object v1, p0, Lo/LV;->z:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 606
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_1
    iget-object v0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    if-eqz v0, :cond_2

    .line 610
    sget-object v1, Lo/LV;->h:Lo/aeA;

    invoke-virtual {v0}, Lo/RadialTimePickerView;->getMax()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lo/aeA;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 611
    iget-object v0, p0, Lo/LV;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 612
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private e(Landroid/content/res/Resources;Z)V
    .locals 2

    .line 318
    iget-object v0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lo/LV;->ab:Lo/RadialTimePickerView$ActionBar;

    invoke-virtual {v0, v1}, Lo/RadialTimePickerView;->setSnappableOnSeekBarChangeListener(Lo/RadialTimePickerView$ActionBar;)V

    .line 320
    iget-object v0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    invoke-virtual {v0}, Lo/RadialTimePickerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lo/LV;->ak:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 321
    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->r:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 322
    iget-object v0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Lo/RadialTimePickerView;->setPadding(IIII)V

    if-eqz p2, :cond_0

    .line 324
    iget-object p1, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->z:I

    invoke-virtual {p1, p2}, Lo/RadialTimePickerView;->setScrubberDentBitmap(I)V

    .line 325
    iget-object p1, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/RadialTimePickerView;->setShouldSnapToTouchStartPosition(Z)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/LV;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lo/LV;->p()V

    return-void
.end method

.method static synthetic e(Lo/LV;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lo/LV;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lo/LV;)Lo/RadialTimePickerView;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    return-object p0
.end method

.method static synthetic g(Lo/LV;)Lo/Mh;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/LV;->l:Lo/Mh;

    return-object p0
.end method

.method static synthetic h(Lo/LV;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lo/LV;->q()V

    return-void
.end method

.method static synthetic i(Lo/LV;)Landroid/widget/ImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/LV;->B:Landroid/widget/ImageView;

    return-object p0
.end method

.method private i(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->bv:I

    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->bz:I

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->bC:I

    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->bB:I

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 279
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Landroid/view/View;[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 284
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 288
    :goto_0
    iget-object v0, p0, Lo/LV;->G:Lo/DayPickerViewPager;

    if-eqz v0, :cond_1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dv:I

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->j:I

    const/16 v3, 0x12

    invoke-direct {p0, v0, v1, v2, v3}, Lo/LV;->c(Lo/DayPickerViewPager;III)V

    .line 289
    :cond_1
    iget-object v0, p0, Lo/LV;->J:Lo/DayPickerViewPager;

    if-eqz v0, :cond_2

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->du:I

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->g:I

    const/16 v3, 0x14

    invoke-direct {p0, v0, v1, v2, v3}, Lo/LV;->c(Lo/DayPickerViewPager;III)V

    .line 290
    :cond_2
    iget-object v0, p0, Lo/LV;->H:Lo/DayPickerViewPager;

    if-eqz v0, :cond_3

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dr:I

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->f:I

    const/16 v3, 0x18

    invoke-direct {p0, v0, v1, v2, v3}, Lo/LV;->c(Lo/DayPickerViewPager;III)V

    .line 292
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/LV;->N:Ljava/util/List;

    .line 293
    iget-object v0, p0, Lo/LV;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lo/LV;->N:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_4
    iget-object v0, p0, Lo/LV;->H:Lo/DayPickerViewPager;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lo/LV;->N:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_5
    iget-object v0, p0, Lo/LV;->G:Lo/DayPickerViewPager;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lo/LV;->N:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_6
    iget-object v0, p0, Lo/LV;->J:Lo/DayPickerViewPager;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lo/LV;->N:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p1, :cond_8

    .line 298
    iget-object v0, p0, Lo/LV;->N:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method static synthetic j(Lo/LV;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/LV;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method private j(Z)V
    .locals 2

    .line 699
    iget-object v0, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 700
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    .line 702
    :cond_0
    iget-object v0, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "MdxMiniPlayerViews"

    if-ne v0, p1, :cond_1

    const-string p1, "Views already updated for panel expansion - skipping"

    .line 703
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 707
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    .line 708
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating views for panel expansion, expanded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object p1, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 711
    iget-object p1, p0, Lo/LV;->N:Ljava/util/List;

    invoke-direct {p0, p1}, Lo/LV;->b(Ljava/util/Collection;)V

    .line 712
    iget-boolean p1, p0, Lo/LV;->O:Z

    iget-object v0, p0, Lo/LV;->S:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lo/LV;->c(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 713
    invoke-direct {p0, p1}, Lo/LV;->a(I)V

    goto :goto_0

    .line 716
    :cond_2
    iget-object p1, p0, Lo/LV;->N:Ljava/util/List;

    invoke-direct {p0, p1}, Lo/LV;->c(Ljava/util/Collection;)V

    .line 717
    iget-boolean p1, p0, Lo/LV;->O:Z

    iget-object v0, p0, Lo/LV;->S:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lo/LV;->c(ZLjava/lang/String;)V

    const/16 p1, 0xb4

    .line 718
    invoke-direct {p0, p1}, Lo/LV;->a(I)V

    .line 719
    invoke-direct {p0}, Lo/LV;->s()V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 269
    iget-object v0, p0, Lo/LV;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lo/LV;->r()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 265
    iget-object v0, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/LV;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 331
    iget-object v0, p0, Lo/LV;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    .line 683
    iget-object v0, p0, Lo/LV;->K:Lo/HorizontalScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/LV;->W:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 685
    iget-object v1, p0, Lo/LV;->X:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 690
    :cond_0
    iget v1, p0, Lo/LV;->V:F

    iget-object v2, p0, Lo/LV;->W:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 692
    iget-object v0, p0, Lo/LV;->K:Lo/HorizontalScrollView;

    iget v2, p0, Lo/LV;->U:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 4

    .line 660
    iget-object v0, p0, Lo/LV;->C:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v3, v2, [Landroid/view/View;

    aput-object v0, v3, v1

    .line 661
    invoke-virtual {p0, v3}, Lo/LV;->e([Landroid/view/View;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lo/LV;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-array v3, v2, [Landroid/view/View;

    aput-object v0, v3, v1

    .line 665
    invoke-virtual {p0, v3}, Lo/LV;->d([Landroid/view/View;)V

    .line 668
    :cond_1
    iget-object v0, p0, Lo/LV;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-array v2, v2, [Landroid/view/View;

    aput-object v0, v2, v1

    .line 669
    invoke-virtual {p0, v2}, Lo/LV;->d([Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private r()I
    .locals 2

    .line 339
    iget-object v0, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 341
    iget-object v1, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr v1, v0

    return v1
.end method

.method private s()V
    .locals 5

    .line 453
    iget-object v0, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 457
    :goto_0
    iget-object v2, p0, Lo/LV;->J:Lo/DayPickerViewPager;

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 458
    iget-boolean v4, p0, Lo/LV;->L:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v2, v4}, Lo/DayPickerViewPager;->setVisibility(I)V

    .line 460
    :cond_3
    iget-object v2, p0, Lo/LV;->M:Landroid/view/View;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 461
    iget-boolean v0, p0, Lo/LV;->L:Z

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :cond_5
    iget-object v0, p0, Lo/LV;->E:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 464
    iget-boolean v2, p0, Lo/LV;->L:Z

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private t()V
    .locals 3

    const/4 v0, 0x0

    .line 641
    iput-boolean v0, p0, Lo/LV;->Q:Z

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelSlideFinished() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/LV;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MdxMiniPlayerViews"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Lo/LV;->T:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 645
    iput-object v1, p0, Lo/LV;->T:Ljava/lang/Runnable;

    .line 647
    :cond_0
    iput-boolean v0, p0, Lo/LV;->Y:Z

    return-void
.end method

.method private w()V
    .locals 2

    .line 750
    iget-object v0, p0, Lo/LV;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 751
    iget-object v1, p0, Lo/LV;->ae:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    :cond_0
    iget-object v0, p0, Lo/LV;->H:Lo/DayPickerViewPager;

    if-eqz v0, :cond_1

    .line 755
    iget-object v1, p0, Lo/LV;->ad:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/DayPickerViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    :cond_1
    iget-object v0, p0, Lo/LV;->A:Lo/DayPickerViewPager;

    if-eqz v0, :cond_2

    .line 759
    iget-object v1, p0, Lo/LV;->ad:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/DayPickerViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    :cond_2
    iget-object v0, p0, Lo/LV;->K:Lo/HorizontalScrollView;

    if-eqz v0, :cond_3

    .line 763
    iget-object v1, p0, Lo/LV;->ah:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    :cond_3
    iget-object v0, p0, Lo/LV;->J:Lo/DayPickerViewPager;

    if-eqz v0, :cond_4

    .line 767
    iget-object v1, p0, Lo/LV;->ai:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/DayPickerViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    :cond_4
    iget-object v0, p0, Lo/LV;->E:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 770
    iget-object v1, p0, Lo/LV;->ai:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    :cond_5
    iget-object v0, p0, Lo/LV;->G:Lo/DayPickerViewPager;

    if-eqz v0, :cond_6

    .line 774
    iget-object v1, p0, Lo/LV;->al:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/DayPickerViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    :cond_6
    iget-object v0, p0, Lo/LV;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 777
    iget-object v1, p0, Lo/LV;->al:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    :cond_7
    iget-object v0, p0, Lo/LV;->j:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 781
    iget-object v1, p0, Lo/LV;->aj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    :cond_8
    iget-object v0, p0, Lo/LV;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 784
    iget-object v1, p0, Lo/LV;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method a(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lo/LV;->L:Z

    .line 449
    invoke-direct {p0}, Lo/LV;->s()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 360
    invoke-virtual {p0}, Lo/LV;->i()V

    .line 361
    iget-object v0, p0, Lo/LV;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lo/LV;->p:F

    .line 364
    :cond_0
    iget-object v0, p0, Lo/LV;->n:Lo/LW;

    invoke-interface {v0}, Lo/LW;->n()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/LV;->j(Z)V

    return-void
.end method

.method protected b(F)V
    .locals 3

    .line 735
    iget-object v0, p0, Lo/LV;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 737
    iget p1, p0, Lo/LV;->p:F

    iget v2, p0, Lo/LV;->q:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr p1, v2

    .line 739
    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 742
    iget p1, p0, Lo/LV;->s:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 743
    iget-object v0, p0, Lo/LV;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lo/LV;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 484
    iget-object v0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0, p1}, Lo/RadialTimePickerView;->setProgress(I)V

    .line 486
    invoke-direct {p0, p1}, Lo/LV;->e(I)V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lo/LV;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :cond_0
    iget-object v0, p0, Lo/LV;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public b(Lo/Am;)V
    .locals 0

    .line 356
    invoke-direct {p0}, Lo/LV;->w()V

    return-void
.end method

.method b(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, v0}, Lo/LV;->e(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hj:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lo/LV;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_0
    iget-object v1, p0, Lo/LV;->v:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 395
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_1
    invoke-virtual {p0, p1}, Lo/LV;->d(Z)V

    return-void
.end method

.method protected varargs b([Landroid/view/View;)V
    .locals 1

    .line 825
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/LV;->a(Ljava/util/Collection;F)V

    return-void
.end method

.method c(F)V
    .locals 2

    const-string v0, "MdxMiniPlayerViews"

    const-string v1, "onPanelSlide()"

    .line 618
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 619
    iput-boolean v0, p0, Lo/LV;->Y:Z

    .line 620
    invoke-virtual {p0, p1}, Lo/LV;->b(F)V

    .line 621
    invoke-direct {p0, p1}, Lo/LV;->e(F)V

    .line 622
    invoke-direct {p0}, Lo/LV;->p()V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .line 591
    iget-object v0, p0, Lo/LV;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method c(ZLjava/lang/String;)V
    .locals 1

    .line 515
    iget-boolean v0, p0, Lo/LV;->Y:Z

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Lo/LV$9;

    invoke-direct {v0, p0, p1, p2}, Lo/LV$9;-><init>(Lo/LV;ZLjava/lang/String;)V

    iput-object v0, p0, Lo/LV;->T:Ljava/lang/Runnable;

    goto :goto_0

    .line 523
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/LV;->a(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method c()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lo/LV;->O:Z

    return v0
.end method

.method c(Z)Z
    .locals 3

    .line 439
    iget-object v0, p0, Lo/LV;->n:Lo/LW;

    invoke-interface {v0}, Lo/LW;->m()Z

    move-result v0

    const-string v1, "MdxMiniPlayerViews"

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdx is playing remotely - mdx menu enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    const-string p1, "mdx is not playing remotely - mdx menu enabled"

    .line 443
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract d()I
.end method

.method d(I)V
    .locals 1

    .line 474
    iget-object v0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, p1}, Lo/RadialTimePickerView;->setMax(I)V

    :cond_0
    return-void
.end method

.method d(Z)V
    .locals 4

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set controls enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LV;->a(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/RadialTimePickerView;->setEnabled(Z)V

    .line 408
    :cond_0
    iget-object v0, p0, Lo/LV;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 409
    :cond_1
    iget-object v0, p0, Lo/LV;->I:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 411
    :cond_2
    iget-object v0, p0, Lo/LV;->H:Lo/DayPickerViewPager;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 412
    :cond_3
    iget-object v0, p0, Lo/LV;->A:Lo/DayPickerViewPager;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 414
    :cond_4
    iget-object v0, p0, Lo/LV;->K:Lo/HorizontalScrollView;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 416
    :cond_5
    iget-object v0, p0, Lo/LV;->G:Lo/DayPickerViewPager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    iget-object v3, p0, Lo/LV;->n:Lo/LW;

    invoke-interface {v3}, Lo/LW;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v3}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 417
    :cond_7
    iget-object v0, p0, Lo/LV;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    iget-object v3, p0, Lo/LV;->n:Lo/LW;

    invoke-interface {v3}, Lo/LW;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v0, v3}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 419
    :cond_9
    iget-object v0, p0, Lo/LV;->J:Lo/DayPickerViewPager;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    iget-object v3, p0, Lo/LV;->n:Lo/LW;

    invoke-interface {v3}, Lo/LW;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v0, v3}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 420
    :cond_b
    iget-object v0, p0, Lo/LV;->E:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_c

    iget-object v3, p0, Lo/LV;->n:Lo/LW;

    invoke-interface {v3}, Lo/LW;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    invoke-direct {p0, v0, v3}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 422
    :cond_d
    iget-object v0, p0, Lo/LV;->j:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 423
    :cond_e
    iget-object v0, p0, Lo/LV;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 424
    :cond_f
    iget-object v0, p0, Lo/LV;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    :cond_10
    new-array v0, v1, [Ljava/lang/Object;

    .line 426
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "setControlsEnabled, enabled: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LV;->a(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lo/LV;->r:Lo/LT;

    if-eqz v0, :cond_11

    .line 429
    invoke-virtual {p0, p1}, Lo/LV;->c(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/LT;->c(Z)V

    const-string v0, "MdxMiniPlayerViews"

    const-string v1, "setControlsEnabled"

    .line 430
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lo/LV;->r:Lo/LT;

    invoke-virtual {v0}, Lo/LT;->c()V

    .line 434
    :cond_11
    iget-object v0, p0, Lo/LV;->n:Lo/LW;

    invoke-interface {v0}, Lo/LW;->n()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/LV;->j(Z)V

    .line 435
    iget-object v0, p0, Lo/LV;->n:Lo/LW;

    invoke-interface {v0, p1}, Lo/LW;->c(Z)V

    return-void
.end method

.method protected varargs d([Landroid/view/View;)V
    .locals 0

    .line 842
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/LV;->b(Ljava/util/Collection;)V

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 384
    iget-object v0, p0, Lo/LV;->t:Landroid/view/View;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 5

    .line 572
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    .line 573
    iget-object v1, p0, Lo/LV;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 574
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v1, p0, Lo/LV;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    :cond_1
    iget-object v1, p0, Lo/LV;->P:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 579
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object p1, p0, Lo/LV;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    :cond_3
    iget-object p1, p0, Lo/LV;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 584
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 585
    iget-object v1, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x5

    :goto_2
    invoke-static {v1, v0}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    return-void
.end method

.method protected e(Z)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Landroid/view/View;

    .line 800
    iget-object v0, p0, Lo/LV;->a:Landroid/view/View;

    aput-object v0, p1, v2

    iget-object v0, p0, Lo/LV;->c:Landroid/view/View;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lo/LV;->b([Landroid/view/View;)V

    .line 801
    iget-object p1, p0, Lo/LV;->j:Landroid/view/View;

    if-eqz p1, :cond_1

    new-array v0, v1, [Landroid/view/View;

    aput-object p1, v0, v2

    .line 802
    invoke-virtual {p0, v0}, Lo/LV;->d([Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Landroid/view/View;

    .line 806
    iget-object v3, p0, Lo/LV;->a:Landroid/view/View;

    aput-object v3, p1, v2

    iget-object v2, p0, Lo/LV;->c:Landroid/view/View;

    aput-object v2, p1, v1

    iget-object v1, p0, Lo/LV;->j:Landroid/view/View;

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lo/LV;->e([Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected varargs e([Landroid/view/View;)V
    .locals 0

    .line 811
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/LV;->c(Ljava/util/Collection;)V

    return-void
.end method

.method public f()I
    .locals 1

    .line 480
    iget-object v0, p0, Lo/LV;->w:Lo/RadialTimePickerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/RadialTimePickerView;->getProgress()I

    move-result v0

    :goto_0
    return v0
.end method

.method f(Z)V
    .locals 1

    .line 469
    iget-object v0, p0, Lo/LV;->G:Lo/DayPickerViewPager;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    .line 470
    :cond_0
    iget-object v0, p0, Lo/LV;->D:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lo/LV;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public g()Landroid/view/View;
    .locals 1

    .line 380
    iget-object v0, p0, Lo/LV;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method g(Z)V
    .locals 1

    .line 491
    iget-object v0, p0, Lo/LV;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 492
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method h()V
    .locals 2

    const-string v0, "MdxMiniPlayerViews"

    const-string v1, "onPanelExpanded()"

    .line 626
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 627
    invoke-direct {p0, v0}, Lo/LV;->j(Z)V

    .line 628
    invoke-direct {p0}, Lo/LV;->t()V

    return-void
.end method

.method h(Z)V
    .locals 5

    .line 500
    iget-object v0, p0, Lo/LV;->F:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/ImageView;

    aput-object v0, v3, v1

    .line 501
    iget-object v0, p0, Lo/LV;->I:Landroid/widget/ImageView;

    aput-object v0, v3, v2

    goto :goto_0

    :cond_0
    new-array v3, v2, [Landroid/widget/ImageView;

    .line 503
    iget-object v0, p0, Lo/LV;->I:Landroid/widget/ImageView;

    aput-object v0, v3, v1

    .line 506
    :goto_0
    array-length v0, v3

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, v3, v1

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    .line 508
    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->bp:I

    goto :goto_2

    :cond_1
    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->bn:I

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_2

    .line 509
    iget-object v4, p0, Lo/LV;->af:Landroid/view/View$OnClickListener;

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lo/LV;->aa:Landroid/view/View$OnClickListener;

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method i()V
    .locals 2

    .line 368
    iget-object v0, p0, Lo/LV;->r:Lo/LT;

    if-eqz v0, :cond_0

    const-string v0, "MdxMiniPlayerViews"

    const-string v1, "updateMdxMenu"

    .line 369
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lo/LV;->r:Lo/LT;

    invoke-virtual {v0}, Lo/LT;->c()V

    :cond_0
    return-void
.end method

.method j()V
    .locals 2

    const-string v0, "MdxMiniPlayerViews"

    const-string v1, "onPanelCollapsed()"

    .line 632
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-direct {p0}, Lo/LV;->q()V

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, v0}, Lo/LV;->e(Z)V

    .line 635
    invoke-direct {p0, v0}, Lo/LV;->j(Z)V

    .line 636
    invoke-direct {p0}, Lo/LV;->s()V

    .line 637
    invoke-direct {p0}, Lo/LV;->t()V

    return-void
.end method

.method l()V
    .locals 4

    .line 651
    iget-object v0, p0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_STATUS_SHOW_CAST_FRAG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isVisible"

    const/4 v3, 0x0

    .line 652
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 651
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    iget-object v0, p0, Lo/LV;->r:Lo/LT;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 655
    invoke-virtual {v0, v1}, Lo/LT;->c(Z)V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    .line 724
    iget-object v0, p0, Lo/LV;->Z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
