.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Build$BroadcastReceiver;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/Build$BroadcastReceiver;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 160
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 163
    instance-of v0, v2, Lo/Build$ActionBar;

    const-string v3, "controllerView.context"

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 165
    iget-object v4, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lo/Build$ActionBar;

    invoke-virtual {v0}, Lo/Build$ActionBar;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xff8

    const/16 v18, 0x0

    const-string v7, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETSTATE"

    invoke-static/range {v4 .. v18}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 168
    :cond_0
    instance-of v0, v2, Lo/Build$ComponentCallbacks2;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v3, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 170
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    move-object v3, v2

    check-cast v3, Lo/Build$ComponentCallbacks2;

    invoke-virtual {v3}, Lo/Build$ComponentCallbacks2;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Ljava/lang/String;)V

    .line 171
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v4, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->a(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->q()Lo/MR;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/MR;->b(Lo/Build$ComponentCallbacks2;)V

    .line 174
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_0

    .line 177
    :cond_1
    instance-of v0, v2, Lo/Build$FragmentManager;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v3, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 179
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    move-object v3, v2

    check-cast v3, Lo/Build$FragmentManager;

    invoke-virtual {v3}, Lo/Build$FragmentManager;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Ljava/lang/String;)V

    .line 180
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v4, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->a(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->q()Lo/MR;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/MR;->b(Lo/Build$FragmentManager;)V

    .line 183
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_0

    .line 186
    :cond_2
    instance-of v0, v2, Lo/Build$ComponentName;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v2, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto/16 :goto_0

    .line 190
    :cond_3
    instance-of v0, v2, Lo/Build$ClipData;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    .line 191
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v6, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 192
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    move-object v6, v2

    check-cast v6, Lo/Build$ClipData;

    invoke-virtual {v6}, Lo/Build$ClipData;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Ljava/lang/String;)V

    .line 194
    iget-object v8, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lo/Build$ClipData;->c()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xff8

    const/16 v22, 0x0

    const-string v11, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETAUDIOSUB"

    invoke-static/range {v8 .. v22}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 195
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->h()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->h()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->f()Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v6}, Lo/Build$ClipData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_6

    .line 197
    :cond_5
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->q()Lo/MR;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/MR;->d(Lo/Build$ClipData;)V

    .line 199
    :cond_6
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_0

    .line 202
    :cond_7
    instance-of v0, v2, Lo/Build$Dialog;

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v6, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 204
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    move-object v6, v2

    check-cast v6, Lo/Build$Dialog;

    invoke-virtual {v6}, Lo/Build$Dialog;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Ljava/lang/String;)V

    .line 206
    iget-object v8, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lo/Build$Dialog;->c()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xff8

    const/16 v22, 0x0

    const-string v11, "com.netflix.mediaclient.intent.action.MDX_ACTION_GETAUDIOSUB"

    invoke-static/range {v8 .. v22}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 207
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->h()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->h()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->f()Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-virtual {v6}, Lo/Build$Dialog;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_a

    .line 209
    :cond_9
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->q()Lo/MR;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/MR;->e(Lo/Build$Dialog;)V

    .line 211
    :cond_a
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_0

    .line 214
    :cond_b
    instance-of v0, v2, Lo/Build$Resources;

    if-eqz v0, :cond_f

    .line 215
    move-object v0, v2

    check-cast v0, Lo/Build$Resources;

    invoke-virtual {v0}, Lo/Build$Resources;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7e0f2e1

    if-eq v2, v3, :cond_e

    const v3, 0x4862dd6

    if-eq v2, v3, :cond_d

    const v3, 0xd605c0e

    if-eq v2, v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string v2, "PLAYING"

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 223
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$ServiceConnection;->a:Lo/Build$ServiceConnection;

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    .line 225
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/Mb;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 226
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->k()Lo/UpdateEngine;

    move-result-object v0

    .line 227
    sget-object v2, Lo/Tk$Activity;->a:Lo/Tk$Activity;

    check-cast v2, Lo/VintfObject;

    .line 807
    const-class v3, Lo/Tk;

    invoke-virtual {v0, v3, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "PAUSE"

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 220
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$DialogInterface;->c:Lo/Build$DialogInterface;

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_0

    :cond_e
    const-string v2, "END_PLAYBACK"

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 217
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    goto/16 :goto_0

    .line 233
    :cond_f
    instance-of v0, v2, Lo/Build$StateListAnimator;

    if-eqz v0, :cond_10

    .line 235
    :try_start_0
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sget-object v3, Lo/MI;->b:Lo/MI;

    move-object v5, v2

    check-cast v5, Lo/Build$StateListAnimator;

    invoke-virtual {v5}, Lo/Build$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lo/MI;->c(Ljava/lang/String;Z)Lcom/netflix/mediaclient/media/Language;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to read json languages, subtitle buttons cannot works: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Lo/Build$StateListAnimator;

    invoke-virtual {v2}, Lo/Build$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_10
    instance-of v0, v2, Lo/Build$SQLiteDatabase;

    if-eqz v0, :cond_11

    .line 243
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->p()Lo/Mh;

    move-result-object v0

    check-cast v2, Lo/Build$SQLiteDatabase;

    invoke-virtual {v2}, Lo/Build$SQLiteDatabase;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lo/Mh;->a(I)V

    goto/16 :goto_0

    .line 246
    :cond_11
    instance-of v0, v2, Lo/Build$LoaderManager;

    if-eqz v0, :cond_13

    .line 247
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/Mb;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 248
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->k()Lo/UpdateEngine;

    move-result-object v0

    sget-object v3, Lo/Tk$Activity;->a:Lo/Tk$Activity;

    check-cast v3, Lo/VintfObject;

    .line 809
    const-class v4, Lo/Tk;

    invoke-virtual {v0, v4, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 249
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->b()Z

    .line 253
    :cond_12
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$3;

    invoke-direct {v3, v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$3;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;Lo/Build$BroadcastReceiver;)V

    check-cast v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    goto/16 :goto_0

    .line 262
    :cond_13
    instance-of v0, v2, Lo/Build$Activity;

    if-eqz v0, :cond_15

    .line 264
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lo/Ms;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 265
    invoke-virtual {v0}, Lo/Ms;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 266
    invoke-virtual {v0}, Lo/Ms;->dismiss()V

    .line 268
    :cond_14
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v5, Lo/Ms;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->a(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lo/Ms;)V

    goto/16 :goto_0

    .line 272
    :cond_15
    instance-of v0, v2, Lo/Build$PackageManager;

    if-eqz v0, :cond_16

    .line 273
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$1;

    invoke-direct {v3, v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$1;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;Lo/Build$BroadcastReceiver;)V

    check-cast v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    goto/16 :goto_0

    .line 283
    :cond_16
    instance-of v0, v2, Lo/Build$AssetManager;

    if-eqz v0, :cond_17

    .line 284
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->a(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lo/Ml;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 285
    invoke-virtual {v0}, Lo/Ml;->dismiss()V

    .line 286
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v5, Lo/Ml;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lo/Ml;)V

    goto/16 :goto_0

    .line 290
    :cond_17
    instance-of v0, v2, Lo/Build$IntentSender;

    if-eqz v0, :cond_18

    .line 291
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_0

    .line 294
    :cond_18
    instance-of v0, v2, Lo/Build$Configuration;

    if-eqz v0, :cond_19

    .line 295
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->q()Lo/MR;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lo/Build$Configuration;

    invoke-virtual {v0, v3}, Lo/MR;->d(Lo/Build$Configuration;)V

    .line 296
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto :goto_0

    .line 299
    :cond_19
    instance-of v0, v2, Lo/Build$PendingIntent;

    if-eqz v0, :cond_1a

    .line 300
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    goto :goto_0

    .line 303
    :cond_1a
    instance-of v0, v2, Lo/Build$ContextWrapper;

    if-eqz v0, :cond_1b

    .line 304
    move-object v0, v2

    check-cast v0, Lo/Build$ContextWrapper;

    invoke-virtual {v0}, Lo/Build$ContextWrapper;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 307
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V

    goto :goto_0

    .line 311
    :cond_1b
    instance-of v0, v2, Lo/Build$Fragment;

    if-eqz v0, :cond_1c

    .line 312
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->t()Lo/Da;

    move-result-object v0

    check-cast v2, Lo/Build$Fragment;

    invoke-virtual {v2}, Lo/Build$Fragment;->e()I

    move-result v3

    invoke-virtual {v2}, Lo/Build$Fragment;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lo/Build$Fragment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Lo/Da;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1c
    instance-of v0, v2, Lo/Build$PictureInPictureParams;

    if-eqz v0, :cond_1d

    .line 316
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->k()Lo/UpdateEngine;

    move-result-object v0

    new-instance v2, Lo/Tk$TaskDescription;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v6, "Incorrect Pin"

    invoke-direct {v2, v6, v3, v4, v5}, Lo/Tk$TaskDescription;-><init>(Ljava/lang/String;ZILo/amc;)V

    check-cast v2, Lo/VintfObject;

    .line 811
    const-class v3, Lo/Tk;

    invoke-virtual {v0, v3, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 322
    :cond_1d
    iget-object v0, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    const-string v3, "mdxEvent"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lo/Build;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    :cond_1e
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lo/Build$BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b(Lo/Build$BroadcastReceiver;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
