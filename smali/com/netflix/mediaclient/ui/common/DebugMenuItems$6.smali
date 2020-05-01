.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field choice:I

.field options:[Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

.field final synthetic val$currentEnvironment:Ljava/lang/String;

.field final synthetic val$prodEnvironments:[Ljava/lang/String;

.field final synthetic val$testEnvironments:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$testEnvironments:[Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$currentEnvironment:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$prodEnvironments:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->choice:I

    return-void
.end method

.method private configureEnvironmentOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$currentEnvironment:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 216
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$currentEnvironment:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->options:[Ljava/lang/String;

    .line 217
    iput v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->choice:I

    .line 220
    :goto_1
    return-void

    .line 198
    :sswitch_0
    const-string/jumbo v4, "api-global.netflix.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "api-staging.netflix.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "api-int.test.netflix.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "api.test.netflix.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$prodEnvironments:[Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->options:[Ljava/lang/String;

    .line 201
    iput v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->choice:I

    goto :goto_1

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$prodEnvironments:[Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->options:[Ljava/lang/String;

    .line 205
    iput v2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->choice:I

    goto :goto_1

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$testEnvironments:[Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->options:[Ljava/lang/String;

    .line 209
    iput v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->choice:I

    goto :goto_1

    .line 212
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$testEnvironments:[Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->options:[Ljava/lang/String;

    .line 213
    iput v2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->choice:I

    goto :goto_1

    .line 198
    :sswitch_data_0
    .sparse-switch
        -0x7a478213 -> :sswitch_0
        -0x2a344045 -> :sswitch_2
        -0x24ebb441 -> :sswitch_1
        0x6bc6371d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showOptionsDialog(IZ[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    const-string/jumbo v1, "Pick API environment"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 225
    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6$1;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;Z)V

    invoke-virtual {v0, p3, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 236
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 192
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->configureEnvironmentOptions()V

    .line 193
    iget v2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->choice:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->options:[Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->val$testEnvironments:[Ljava/lang/String;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->options:[Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->showOptionsDialog(IZ[Ljava/lang/String;)V

    .line 194
    return v1

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
