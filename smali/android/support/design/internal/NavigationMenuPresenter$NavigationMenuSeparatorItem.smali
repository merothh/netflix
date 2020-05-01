.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;


# instance fields
.field private final mPaddingBottom:I

.field private final mPaddingTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingTop:I

    .line 636
    iput p2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingBottom:I

    .line 637
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingTop:I

    return v0
.end method
