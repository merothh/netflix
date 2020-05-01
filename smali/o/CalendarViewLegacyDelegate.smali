.class public final Lo/CalendarViewLegacyDelegate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CalendarViewLegacyDelegate$Activity;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, p1, p2, v0}, Lo/CalendarViewLegacyDelegate;->b(Landroid/content/Context;Landroid/os/Handler;Lo/hK;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;
    .locals 2

    .line 145
    new-instance v0, Lo/ScrollBarDrawable$ActionBar;

    invoke-direct {v0, p0}, Lo/ScrollBarDrawable$ActionBar;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-static {p1}, Lo/CalendarViewLegacyDelegate;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable$ActionBar;->a(Ljava/lang/CharSequence;)Lo/ScrollBarDrawable$ActionBar;

    .line 147
    invoke-static {p2}, Lo/CalendarViewLegacyDelegate;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable$ActionBar;->c(Ljava/lang/CharSequence;)Lo/ScrollBarDrawable$ActionBar;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :goto_0
    if-eqz p6, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    sget p6, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {p0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    :goto_1
    if-eqz p3, :cond_3

    if-eqz p10, :cond_2

    .line 165
    new-instance p0, Lo/Checkable;

    invoke-direct {p0, p3, p10, p9}, Lo/Checkable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Lo/ScrollBarDrawable$ActionBar;->a(Landroid/content/DialogInterface$OnKeyListener;)Lo/ScrollBarDrawable$ActionBar;

    .line 176
    :cond_2
    new-instance p0, Lo/CalendarViewLegacyDelegate$5;

    invoke-direct {p0, p5, p3, p9}, Lo/CalendarViewLegacyDelegate$5;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p4, p0}, Lo/ScrollBarDrawable$ActionBar;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;

    if-nez p8, :cond_4

    .line 188
    new-instance p0, Lo/CalendarViewLegacyDelegate$3;

    invoke-direct {p0, p7, p3, p9}, Lo/CalendarViewLegacyDelegate$3;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p6, p0}, Lo/ScrollBarDrawable$ActionBar;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 202
    invoke-virtual {v0, p4, p0}, Lo/ScrollBarDrawable$ActionBar;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;

    if-nez p8, :cond_4

    .line 204
    invoke-virtual {v0, p6, p0}, Lo/ScrollBarDrawable$ActionBar;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;

    :cond_4
    :goto_2
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p0, p3

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "nf_dialog"

    const-string p2, "Creating dialog... Title: %s, Message: %s"

    .line 207
    invoke-static {p1, p2, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 3

    .line 100
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance p0, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_0
    const-string v0, "netflix.com/changeplan."

    const-string v1, "netflix.com/changeplan"

    .line 104
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 p0, 0xf

    .line 108
    :try_start_0
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "nf_dialog"

    const-string v2, "SPY-10546: Unable to add links to spannable"

    .line 110
    invoke-static {v1, v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;Lo/hK;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;
    .locals 12

    .line 74
    instance-of v0, p2, Lo/CalendarViewLegacyDelegate$Activity;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p2

    check-cast v0, Lo/CalendarViewLegacyDelegate$Activity;

    .line 76
    iget-object v2, v0, Lo/CalendarViewLegacyDelegate$Activity;->c:Ljava/lang/String;

    iget-object v3, v0, Lo/CalendarViewLegacyDelegate$Activity;->e:Ljava/lang/String;

    iget-object v5, v0, Lo/CalendarViewLegacyDelegate$Activity;->a:Ljava/lang/String;

    iget-object v6, v0, Lo/CalendarViewLegacyDelegate$Activity;->f:Ljava/lang/Runnable;

    iget-object v7, v0, Lo/CalendarViewLegacyDelegate$Activity;->d:Ljava/lang/String;

    iget-object v8, v0, Lo/CalendarViewLegacyDelegate$Activity;->b:Ljava/lang/Runnable;

    const/4 v9, 0x0

    iget-object v11, p2, Lo/hK;->g:Ljava/lang/Runnable;

    move-object v1, p0

    move-object v4, p1

    move-object v10, p3

    invoke-static/range {v1 .. v11}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    iget-object v1, p2, Lo/hK;->c:Ljava/lang/String;

    iget-object v2, p2, Lo/hK;->e:Ljava/lang/String;

    iget-object v4, p2, Lo/hK;->a:Ljava/lang/String;

    iget-object v5, p2, Lo/hK;->f:Ljava/lang/Runnable;

    iget-object v7, p2, Lo/hK;->g:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v3, p1

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lo/CalendarViewLegacyDelegate;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 57
    invoke-static/range {v0 .. v10}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic b(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p3, 0x6f

    if-ne p4, p3, :cond_1

    .line 167
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/app/Dialog;)V
    .locals 1

    const v0, 0x102000b

    .line 257
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 259
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method static synthetic d(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lo/CalendarViewLegacyDelegate;->b(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
