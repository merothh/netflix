.class public final Lcom/netflix/android/tooltips/Tooltip;
.super Ljava/lang/Object;
.source "Tooltip.java"


# static fields
.field private static final PREFS:Ljava/lang/String; = "com.netflix.android.tooltips"

.field private static final PREF_CONSUMED:Ljava/lang/String; = "consumed."


# instance fields
.field private mCallback:Lcom/netflix/android/tooltips/Tooltip$Callback;

.field private mKey:Ljava/lang/String;

.field private final mParent:Landroid/support/design/widget/CoordinatorLayout;

.field private final mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/android/tooltips/Tooltip;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/android/tooltips/R$layout;->tooltip_layout:I

    iget-object v2, p0, Lcom/netflix/android/tooltips/Tooltip;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/tooltips/TooltipLayout;

    iput-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/TooltipLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    new-instance v1, Lcom/netflix/android/tooltips/Tooltip$1;

    invoke-direct {v1, p0}, Lcom/netflix/android/tooltips/Tooltip$1;-><init>(Lcom/netflix/android/tooltips/Tooltip;)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/TooltipLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0, p4}, Lcom/netflix/android/tooltips/TooltipLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0, p5}, Lcom/netflix/android/tooltips/TooltipLayout;->setDetail(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/netflix/android/tooltips/Tooltip$2;

    invoke-direct {v0, p0, p3}, Lcom/netflix/android/tooltips/Tooltip$2;-><init>(Lcom/netflix/android/tooltips/Tooltip;Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0, p3}, Lcom/netflix/android/tooltips/TooltipLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/android/tooltips/Tooltip;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/TooltipLayout;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/Tooltip$Callback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mCallback:Lcom/netflix/android/tooltips/Tooltip$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/android/tooltips/Tooltip;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/android/tooltips/Tooltip;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/android/tooltips/Tooltip;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/android/tooltips/Tooltip;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/android/tooltips/Tooltip;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static clearPrefs(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "com.netflix.android.tooltips"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getPrefKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "consumed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.android.tooltips"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isConsumed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "com.netflix.android.tooltips"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "consumed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static makeTooltip(Landroid/content/Context;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;II)Lcom/netflix/android/tooltips/Tooltip;
    .locals 6

    new-instance v0, Lcom/netflix/android/tooltips/Tooltip;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/tooltips/Tooltip;-><init>(Landroid/content/Context;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static makeTooltip(Landroid/content/Context;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 6

    new-instance v0, Lcom/netflix/android/tooltips/Tooltip;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/tooltips/Tooltip;-><init>(Landroid/content/Context;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/Tooltip;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/TooltipLayout;->dismiss(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->getTarget()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isConsumed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/android/tooltips/Tooltip;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/android/tooltips/Tooltip;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShown()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/Tooltip;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/netflix/android/tooltips/Tooltip$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/tooltips/Tooltip;->mCallback:Lcom/netflix/android/tooltips/Tooltip$Callback;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout;->setUserOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOneTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/tooltips/Tooltip;->mKey:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/android/tooltips/Tooltip;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/TooltipLayout;->show(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip;->mTooltipLayout:Lcom/netflix/android/tooltips/TooltipLayout;

    new-instance v1, Lcom/netflix/android/tooltips/Tooltip$3;

    invoke-direct {v1, p0}, Lcom/netflix/android/tooltips/Tooltip$3;-><init>(Lcom/netflix/android/tooltips/Tooltip;)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/TooltipLayout;->setCallback(Lcom/netflix/android/tooltips/Tooltip$Callback;)V

    :cond_0
    return-void
.end method
