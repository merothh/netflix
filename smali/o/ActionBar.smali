.class public Lo/ActionBar;
.super Lo/OnCreateContextMenuListener;
.source ""

# interfaces
.implements Lo/Error;
.implements Lo/Method;
.implements Lo/StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ActionBar$StateListAnimator;
    }
.end annotation


# instance fields
.field private mContentLayoutId:I

.field private final mLifecycleRegistry:Lo/ClassCastException;

.field private final mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private final mSavedStateRegistryController:Lo/GenericDeclaration;

.field private mViewModelStore:Lo/ExceptionInInitializerError;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 84
    invoke-direct {p0}, Lo/OnCreateContextMenuListener;-><init>()V

    .line 61
    new-instance v0, Lo/ClassCastException;

    invoke-direct {v0, p0}, Lo/ClassCastException;-><init>(Lo/UnicodeScript;)V

    iput-object v0, p0, Lo/ActionBar;->mLifecycleRegistry:Lo/ClassCastException;

    .line 63
    invoke-static {p0}, Lo/GenericDeclaration;->b(Lo/Method;)Lo/GenericDeclaration;

    move-result-object v0

    iput-object v0, p0, Lo/ActionBar;->mSavedStateRegistryController:Lo/GenericDeclaration;

    .line 68
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Lo/ActionBar$3;

    invoke-direct {v1, p0}, Lo/ActionBar$3;-><init>(Lo/ActionBar;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/ActionBar;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 85
    invoke-virtual {p0}, Lo/ActionBar;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lo/ActionBar;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Lo/ActionBar;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lo/ActionBar;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Lo/ActionBar;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lo/ActionBar;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    :cond_1
    return-void

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lo/ActionBar;-><init>()V

    .line 138
    iput p1, p0, Lo/ActionBar;->mContentLayoutId:I

    return-void
.end method

.method static synthetic access$001(Lo/ActionBar;)V
    .locals 0

    .line 50
    invoke-super {p0}, Lo/OnCreateContextMenuListener;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Lo/ActionBar;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionBar$StateListAnimator;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, v0, Lo/ActionBar$StateListAnimator;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 241
    iget-object v0, p0, Lo/ActionBar;->mLifecycleRegistry:Lo/ClassCastException;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 297
    iget-object v0, p0, Lo/ActionBar;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lo/Field;
    .locals 1

    .line 303
    iget-object v0, p0, Lo/ActionBar;->mSavedStateRegistryController:Lo/GenericDeclaration;

    invoke-virtual {v0}, Lo/GenericDeclaration;->c()Lo/Field;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Lo/ExceptionInInitializerError;
    .locals 2

    .line 257
    invoke-virtual {p0}, Lo/ActionBar;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lo/ActionBar;->mViewModelStore:Lo/ExceptionInInitializerError;

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lo/ActionBar;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionBar$StateListAnimator;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, v0, Lo/ActionBar$StateListAnimator;->d:Lo/ExceptionInInitializerError;

    iput-object v0, p0, Lo/ActionBar;->mViewModelStore:Lo/ExceptionInInitializerError;

    .line 268
    :cond_0
    iget-object v0, p0, Lo/ActionBar;->mViewModelStore:Lo/ExceptionInInitializerError;

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Lo/ExceptionInInitializerError;

    invoke-direct {v0}, Lo/ExceptionInInitializerError;-><init>()V

    iput-object v0, p0, Lo/ActionBar;->mViewModelStore:Lo/ExceptionInInitializerError;

    .line 272
    :cond_1
    iget-object v0, p0, Lo/ActionBar;->mViewModelStore:Lo/ExceptionInInitializerError;

    return-object v0

    .line 258
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 286
    iget-object v0, p0, Lo/ActionBar;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Lo/OnCreateContextMenuListener;->onCreate(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lo/ActionBar;->mSavedStateRegistryController:Lo/GenericDeclaration;

    invoke-virtual {v0, p1}, Lo/GenericDeclaration;->e(Landroid/os/Bundle;)V

    .line 151
    invoke-static {p0}, Lo/Compiler;->c(Landroid/app/Activity;)V

    .line 152
    iget p1, p0, Lo/ActionBar;->mContentLayoutId:I

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lo/ActionBar;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 176
    invoke-virtual {p0}, Lo/ActionBar;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lo/ActionBar;->mViewModelStore:Lo/ExceptionInInitializerError;

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lo/ActionBar;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ActionBar$StateListAnimator;

    if-eqz v2, :cond_0

    .line 185
    iget-object v1, v2, Lo/ActionBar$StateListAnimator;->d:Lo/ExceptionInInitializerError;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_1
    new-instance v2, Lo/ActionBar$StateListAnimator;

    invoke-direct {v2}, Lo/ActionBar$StateListAnimator;-><init>()V

    .line 194
    iput-object v0, v2, Lo/ActionBar$StateListAnimator;->b:Ljava/lang/Object;

    .line 195
    iput-object v1, v2, Lo/ActionBar$StateListAnimator;->d:Lo/ExceptionInInitializerError;

    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lo/ActionBar;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 161
    instance-of v1, v0, Lo/ClassCastException;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Lo/ClassCastException;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lo/ClassCastException;->b(Landroidx/lifecycle/Lifecycle$State;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lo/OnCreateContextMenuListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    iget-object v0, p0, Lo/ActionBar;->mSavedStateRegistryController:Lo/GenericDeclaration;

    invoke-virtual {v0, p1}, Lo/GenericDeclaration;->d(Landroid/os/Bundle;)V

    return-void
.end method
