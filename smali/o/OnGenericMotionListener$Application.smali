.class public abstract Lo/OnGenericMotionListener$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OnGenericMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Application"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field protected d:Lo/OnGenericMotionListener$Activity;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1671
    iput-boolean v0, p0, Lo/OnGenericMotionListener$Application;->e:Z

    return-void
.end method

.method private c(III)Landroid/graphics/Bitmap;
    .locals 3

    .line 1898
    iget-object v0, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v0, v0, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p3, :cond_0

    .line 1899
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    if-nez p3, :cond_1

    .line 1900
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 1901
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 1902
    invoke-virtual {p1, v2, v2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_2

    .line 1904
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1907
    :cond_2
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1908
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private c(IIII)Landroid/graphics/Bitmap;
    .locals 2

    .line 1914
    sget v0, Lo/AccessibilityDelegate$Application;->a:I

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, v0, p4, p2}, Lo/OnGenericMotionListener$Application;->c(III)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1916
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1917
    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v1, v1, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    .line 1918
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int/2addr p2, p3

    .line 1919
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    .line 1920
    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1921
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 p3, -0x1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1922
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method


# virtual methods
.method public a(Lo/OnGenericMotionListener$Activity;)V
    .locals 1

    .line 1674
    iget-object v0, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    if-eq v0, p1, :cond_0

    .line 1675
    iput-object p1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    .line 1676
    iget-object p1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    if-eqz p1, :cond_0

    .line 1677
    invoke-virtual {p1, p0}, Lo/OnGenericMotionListener$Activity;->d(Lo/OnGenericMotionListener$Application;)Lo/OnGenericMotionListener$Activity;

    :cond_0
    return-void
.end method

.method public b(Lo/OnHoverListener;)V
    .locals 0

    return-void
.end method

.method public c(II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1894
    invoke-direct {p0, p1, p2, v0}, Lo/OnGenericMotionListener$Application;->c(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public c(Lo/OnHoverListener;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lo/OnHoverListener;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public e(Lo/OnHoverListener;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(ZIZ)Landroid/widget/RemoteViews;
    .locals 12

    .line 1747
    iget-object v0, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v0, v0, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1748
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v1, v1, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1752
    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    invoke-virtual {p2}, Lo/OnGenericMotionListener$Activity;->e()I

    move-result p2

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1753
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/16 v10, 0x10

    if-lt v2, v10, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_2

    const-string v2, "setBackgroundResource"

    if-eqz p2, :cond_1

    .line 1756
    sget p2, Lo/AccessibilityDelegate$ActionBar;->L:I

    sget v4, Lo/AccessibilityDelegate$Application;->e:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1758
    sget p2, Lo/AccessibilityDelegate$ActionBar;->G:I

    sget v4, Lo/AccessibilityDelegate$Application;->d:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 1761
    :cond_1
    sget p2, Lo/AccessibilityDelegate$ActionBar;->L:I

    sget v4, Lo/AccessibilityDelegate$Application;->b:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1763
    sget p2, Lo/AccessibilityDelegate$ActionBar;->G:I

    sget v4, Lo/AccessibilityDelegate$Application;->c:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1768
    :cond_2
    :goto_1
    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p2, p2, Lo/OnGenericMotionListener$Activity;->g:Landroid/graphics/Bitmap;

    const/16 v11, 0x8

    if-eqz p2, :cond_5

    .line 1771
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_3

    .line 1772
    sget p2, Lo/AccessibilityDelegate$ActionBar;->G:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1773
    sget p2, Lo/AccessibilityDelegate$ActionBar;->G:I

    iget-object v2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v2, v2, Lo/OnGenericMotionListener$Activity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v7, p2, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1775
    :cond_3
    sget p2, Lo/AccessibilityDelegate$ActionBar;->G:I

    invoke-virtual {v7, p2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    if-eqz p1, :cond_7

    .line 1777
    iget-object p1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p1, p1, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_7

    .line 1778
    sget p1, Lo/AccessibilityDelegate$TaskDescription;->b:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1780
    sget p2, Lo/AccessibilityDelegate$TaskDescription;->f:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    .line 1782
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_4

    .line 1783
    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v1, v1, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    .line 1787
    invoke-virtual {v2}, Lo/OnGenericMotionListener$Activity;->b()I

    move-result v2

    .line 1783
    invoke-direct {p0, v1, p1, p2, v2}, Lo/OnGenericMotionListener$Application;->c(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1788
    sget p2, Lo/AccessibilityDelegate$ActionBar;->N:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1790
    :cond_4
    sget p1, Lo/AccessibilityDelegate$ActionBar;->N:I

    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p2, p2, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Lo/OnGenericMotionListener$Application;->c(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1793
    :goto_3
    sget p1, Lo/AccessibilityDelegate$ActionBar;->N:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_7

    .line 1795
    iget-object p1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p1, p1, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_7

    .line 1796
    sget p1, Lo/AccessibilityDelegate$ActionBar;->G:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1797
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    .line 1798
    sget p1, Lo/AccessibilityDelegate$TaskDescription;->a:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget p2, Lo/AccessibilityDelegate$TaskDescription;->c:I

    .line 1800
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 1801
    sget p2, Lo/AccessibilityDelegate$TaskDescription;->j:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 1803
    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v1, v1, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    .line 1807
    invoke-virtual {v2}, Lo/OnGenericMotionListener$Activity;->b()I

    move-result v2

    .line 1803
    invoke-direct {p0, v1, p1, p2, v2}, Lo/OnGenericMotionListener$Application;->c(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1808
    sget p2, Lo/AccessibilityDelegate$ActionBar;->G:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4

    .line 1810
    :cond_6
    sget p1, Lo/AccessibilityDelegate$ActionBar;->G:I

    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p2, p2, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Lo/OnGenericMotionListener$Application;->c(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1814
    :cond_7
    :goto_4
    iget-object p1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p1, p1, Lo/OnGenericMotionListener$Activity;->a:Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    .line 1815
    sget p1, Lo/AccessibilityDelegate$ActionBar;->ac:I

    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p2, p2, Lo/OnGenericMotionListener$Activity;->a:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1817
    :cond_8
    iget-object p1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p1, p1, Lo/OnGenericMotionListener$Activity;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    .line 1818
    sget p1, Lo/AccessibilityDelegate$ActionBar;->T:I

    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p2, p2, Lo/OnGenericMotionListener$Activity;->b:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    .line 1822
    :goto_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v3, :cond_a

    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p2, p2, Lo/OnGenericMotionListener$Activity;->g:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_a

    const/4 p2, 0x1

    goto :goto_6

    :cond_a
    const/4 p2, 0x0

    .line 1823
    :goto_6
    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v1, v1, Lo/OnGenericMotionListener$Activity;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    .line 1824
    sget p1, Lo/AccessibilityDelegate$ActionBar;->J:I

    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object p2, p2, Lo/OnGenericMotionListener$Activity;->i:Ljava/lang/CharSequence;

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1825
    sget p1, Lo/AccessibilityDelegate$ActionBar;->J:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_7
    const/4 p1, 0x1

    const/4 p2, 0x1

    goto :goto_9

    .line 1828
    :cond_b
    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget v1, v1, Lo/OnGenericMotionListener$Activity;->k:I

    if-lez v1, :cond_d

    .line 1829
    sget p1, Lo/AccessibilityDelegate$Activity;->e:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 1831
    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget p2, p2, Lo/OnGenericMotionListener$Activity;->k:I

    if-le p2, p1, :cond_c

    .line 1832
    sget p1, Lo/AccessibilityDelegate$ActionBar;->J:I

    sget p2, Lo/AccessibilityDelegate$PendingIntent;->d:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 1835
    :cond_c
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p1

    .line 1836
    sget p2, Lo/AccessibilityDelegate$ActionBar;->J:I

    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget v1, v1, Lo/OnGenericMotionListener$Activity;->k:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1838
    :goto_8
    sget p1, Lo/AccessibilityDelegate$ActionBar;->J:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7

    .line 1842
    :cond_d
    sget v1, Lo/AccessibilityDelegate$ActionBar;->J:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1846
    :goto_9
    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v1, v1, Lo/OnGenericMotionListener$Activity;->s:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_f

    .line 1847
    sget v1, Lo/AccessibilityDelegate$ActionBar;->T:I

    iget-object v2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v2, v2, Lo/OnGenericMotionListener$Activity;->s:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1848
    iget-object v1, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v1, v1, Lo/OnGenericMotionListener$Activity;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 1849
    sget v1, Lo/AccessibilityDelegate$ActionBar;->ab:I

    iget-object v2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v2, v2, Lo/OnGenericMotionListener$Activity;->b:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1850
    sget v1, Lo/AccessibilityDelegate$ActionBar;->ab:I

    invoke-virtual {v7, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v1, 0x1

    goto :goto_a

    .line 1853
    :cond_e
    sget v1, Lo/AccessibilityDelegate$ActionBar;->ab:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_f
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_11

    .line 1859
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_11

    if-eqz p3, :cond_10

    .line 1862
    sget p3, Lo/AccessibilityDelegate$TaskDescription;->h:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 1864
    sget v0, Lo/AccessibilityDelegate$ActionBar;->T:I

    invoke-virtual {v7, v0, v9, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 1868
    :cond_10
    sget v2, Lo/AccessibilityDelegate$ActionBar;->K:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1871
    :cond_11
    iget-object p3, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    invoke-virtual {p3}, Lo/OnGenericMotionListener$Activity;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_13

    .line 1872
    iget-object p2, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    iget-boolean p2, p2, Lo/OnGenericMotionListener$Activity;->m:Z

    if-eqz p2, :cond_12

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_12

    .line 1873
    sget p2, Lo/AccessibilityDelegate$ActionBar;->H:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1874
    sget p2, Lo/AccessibilityDelegate$ActionBar;->H:I

    iget-object p3, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    .line 1875
    invoke-virtual {p3}, Lo/OnGenericMotionListener$Activity;->a()J

    move-result-wide v0

    .line 1876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-string p3, "setBase"

    .line 1874
    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1877
    sget p2, Lo/AccessibilityDelegate$ActionBar;->H:I

    const-string p3, "setStarted"

    invoke-virtual {v7, p2, p3, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_b

    .line 1879
    :cond_12
    sget p2, Lo/AccessibilityDelegate$ActionBar;->aa:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1880
    sget p2, Lo/AccessibilityDelegate$ActionBar;->aa:I

    iget-object p3, p0, Lo/OnGenericMotionListener$Application;->d:Lo/OnGenericMotionListener$Activity;

    invoke-virtual {p3}, Lo/OnGenericMotionListener$Activity;->a()J

    move-result-wide v0

    const-string p3, "setTime"

    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :goto_b
    const/4 p2, 0x1

    .line 1884
    :cond_13
    sget p3, Lo/AccessibilityDelegate$ActionBar;->P:I

    if-eqz p2, :cond_14

    const/4 p2, 0x0

    goto :goto_c

    :cond_14
    const/16 p2, 0x8

    :goto_c
    invoke-virtual {v7, p3, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1885
    sget p2, Lo/AccessibilityDelegate$ActionBar;->M:I

    if-eqz p1, :cond_15

    goto :goto_d

    :cond_15
    const/16 v9, 0x8

    :goto_d
    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v7
.end method
