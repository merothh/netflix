.class Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;
.super Landroid/widget/LinearLayout;
.source "SettingsActivity.java"


# instance fields
.field deviceName:Landroid/widget/TextView;

.field freeView:Landroid/view/View;

.field freeViewLegend:Landroid/widget/TextView;

.field netflixView:Landroid/view/View;

.field netflixViewLegend:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

.field usedView:Landroid/view/View;

.field usedViewLegend:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    .line 96
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030106

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViews()V

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->update()V

    .line 102
    const v0, 0x7f0f0017

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setTag(Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setupClicks()V

    .line 104
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 120
    const v0, 0x7f0f0377

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->netflixViewLegend:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0f0376

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->usedViewLegend:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0f0378

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->freeViewLegend:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0f0371

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->deviceName:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0f0374

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->netflixView:Landroid/view/View;

    .line 125
    const v0, 0x7f0f0373

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->usedView:Landroid/view/View;

    .line 126
    const v0, 0x7f0f0375

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->freeView:Landroid/view/View;

    .line 127
    return-void
.end method

.method private setupClicks()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method


# virtual methods
.method update()V
    .locals 8

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getExternalDownloadDirIfAvailable(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v0, "nf_settings"

    const-string/jumbo v1, "SettingsActivity:update filedir is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-string/jumbo v0, "nf_settings"

    const-string/jumbo v1, "SettingsActivity:update getAbsolutePath call returned is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string/jumbo v1, "nf_settings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v2

    .line 148
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getFreeSpaceOnFileSystem(Ljava/io/File;)J

    move-result-wide v4

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->getDirectorySizeInBytes(Ljava/io/File;)J

    move-result-wide v6

    .line 150
    sub-long v0, v2, v4

    sub-long v2, v0, v6

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->netflixView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v1, v6

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->usedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->freeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    long-to-float v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v1, v6, v7}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$100(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$002(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$100(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;J)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$100(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;J)Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->netflixViewLegend:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    const v4, 0x7f0800ea

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v7}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$000(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->usedViewLegend:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    const v4, 0x7f0800eb

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->freeViewLegend:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    const v3, 0x7f0800e9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->deviceName:Landroid/widget/TextView;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->forceLayout()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
