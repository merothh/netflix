.class Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplBase;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method


# virtual methods
.method public setActionBarDescription(I)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 236
    :cond_0
    return-void
.end method
