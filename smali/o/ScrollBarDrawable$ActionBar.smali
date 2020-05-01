.class public Lo/ScrollBarDrawable$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ScrollBarDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private c:Lo/ScrollBarDrawable$TaskDescription;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lo/ScrollBarDrawable$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/ScrollBarDrawable$TaskDescription;-><init>(Landroid/content/Context;Lo/ScrollBarDrawable$3;)V

    iput-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;
    .locals 2

    .line 197
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v0, Lo/ScrollBarDrawable$TaskDescription;->e:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->j:Ljava/lang/CharSequence;

    .line 198
    iget-object p1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-object p2, p1, Lo/ScrollBarDrawable$TaskDescription;->f:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lo/ScrollBarDrawable$ActionBar;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->k:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lo/ScrollBarDrawable$ActionBar;
    .locals 1

    .line 145
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Z)Lo/ScrollBarDrawable$ActionBar;
    .locals 1

    .line 247
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-boolean p1, v0, Lo/ScrollBarDrawable$TaskDescription;->h:Z

    return-object p0
.end method

.method public c()Lo/PendingIntent;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lo/ScrollBarDrawable$ActionBar;->e()Lo/ScrollBarDrawable;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lo/PendingIntent;->show()V

    return-object v0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;
    .locals 2

    .line 223
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v0, Lo/ScrollBarDrawable$TaskDescription;->e:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->g:Ljava/lang/CharSequence;

    .line 224
    iget-object p1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-object p2, p1, Lo/ScrollBarDrawable$TaskDescription;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lo/ScrollBarDrawable$ActionBar;
    .locals 1

    .line 165
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;
    .locals 1

    .line 210
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->j:Ljava/lang/CharSequence;

    .line 211
    iput-object p2, v0, Lo/ScrollBarDrawable$TaskDescription;->f:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d(Landroid/content/DialogInterface$OnCancelListener;)Lo/ScrollBarDrawable$ActionBar;
    .locals 1

    .line 258
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->l:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;
    .locals 1

    .line 236
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->g:Ljava/lang/CharSequence;

    .line 237
    iput-object p2, v0, Lo/ScrollBarDrawable$TaskDescription;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public e(I)Lo/ScrollBarDrawable$ActionBar;
    .locals 2

    .line 155
    iget-object v0, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v0, Lo/ScrollBarDrawable$TaskDescription;->e:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lo/ScrollBarDrawable$TaskDescription;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e()Lo/ScrollBarDrawable;
    .locals 4

    .line 280
    new-instance v0, Lo/ScrollBarDrawable;

    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/ScrollBarDrawable;-><init>(Landroid/content/Context;)V

    .line 281
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-boolean v1, v1, Lo/ScrollBarDrawable$TaskDescription;->h:Z

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable;->setCancelable(Z)V

    .line 282
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 283
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->k:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 285
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable;->c(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :cond_1
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget v1, v1, Lo/ScrollBarDrawable$TaskDescription;->d:I

    if-ltz v1, :cond_2

    .line 294
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget v1, v1, Lo/ScrollBarDrawable$TaskDescription;->d:I

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable;->d(I)V

    .line 297
    :cond_2
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 298
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable;->e(Ljava/lang/CharSequence;)V

    .line 300
    :cond_3
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->j:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    .line 301
    iget-object v2, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v2, v2, Lo/ScrollBarDrawable$TaskDescription;->j:Ljava/lang/CharSequence;

    iget-object v3, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v3, v3, Lo/ScrollBarDrawable$TaskDescription;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lo/ScrollBarDrawable;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 303
    :cond_4
    iget-object v1, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v1, v1, Lo/ScrollBarDrawable$TaskDescription;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    const/4 v1, -0x2

    .line 304
    iget-object v2, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v2, v2, Lo/ScrollBarDrawable$TaskDescription;->g:Ljava/lang/CharSequence;

    iget-object v3, p0, Lo/ScrollBarDrawable$ActionBar;->c:Lo/ScrollBarDrawable$TaskDescription;

    iget-object v3, v3, Lo/ScrollBarDrawable$TaskDescription;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lo/ScrollBarDrawable;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    return-object v0
.end method
