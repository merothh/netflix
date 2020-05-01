.class public final Lo/Signature$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Signature$ActionBar$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Lo/Signature$ActionBar$StateListAnimator;

.field private final b:Ljava/lang/String;

.field private c:Lo/Signature$ActionBar$StateListAnimator;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Lo/Signature$ActionBar$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Signature$ActionBar$StateListAnimator;-><init>(Lo/Signature$5;)V

    iput-object v0, p0, Lo/Signature$ActionBar;->a:Lo/Signature$ActionBar$StateListAnimator;

    .line 198
    iget-object v0, p0, Lo/Signature$ActionBar;->a:Lo/Signature$ActionBar$StateListAnimator;

    iput-object v0, p0, Lo/Signature$ActionBar;->c:Lo/Signature$ActionBar$StateListAnimator;

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lo/Signature$ActionBar;->d:Z

    .line 205
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/Signature$ActionBar;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lo/Signature$5;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lo/Signature$ActionBar;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private e()Lo/Signature$ActionBar$StateListAnimator;
    .locals 2

    .line 404
    new-instance v0, Lo/Signature$ActionBar$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Signature$ActionBar$StateListAnimator;-><init>(Lo/Signature$5;)V

    .line 405
    iget-object v1, p0, Lo/Signature$ActionBar;->c:Lo/Signature$ActionBar$StateListAnimator;

    iput-object v0, v1, Lo/Signature$ActionBar$StateListAnimator;->a:Lo/Signature$ActionBar$StateListAnimator;

    iput-object v0, p0, Lo/Signature$ActionBar;->c:Lo/Signature$ActionBar$StateListAnimator;

    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;
    .locals 1

    .line 416
    invoke-direct {p0}, Lo/Signature$ActionBar;->e()Lo/Signature$ActionBar$StateListAnimator;

    move-result-object v0

    .line 417
    iput-object p2, v0, Lo/Signature$ActionBar$StateListAnimator;->d:Ljava/lang/Object;

    .line 418
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lo/Signature$ActionBar$StateListAnimator;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lo/Signature$ActionBar;
    .locals 0

    .line 237
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/Signature$ActionBar;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2}, Lo/Signature$ActionBar;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;I)Lo/Signature$ActionBar;
    .locals 0

    .line 277
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/Signature$ActionBar;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 384
    iget-boolean v0, p0, Lo/Signature$ActionBar;->d:Z

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lo/Signature$ActionBar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    iget-object v2, p0, Lo/Signature$ActionBar;->a:Lo/Signature$ActionBar$StateListAnimator;

    iget-object v2, v2, Lo/Signature$ActionBar$StateListAnimator;->a:Lo/Signature$ActionBar$StateListAnimator;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    .line 390
    iget-object v4, v2, Lo/Signature$ActionBar$StateListAnimator;->d:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 391
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v3, v2, Lo/Signature$ActionBar$StateListAnimator;->e:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 395
    iget-object v3, v2, Lo/Signature$ActionBar$StateListAnimator;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    :cond_1
    iget-object v3, v2, Lo/Signature$ActionBar$StateListAnimator;->d:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 389
    :cond_2
    iget-object v2, v2, Lo/Signature$ActionBar$StateListAnimator;->a:Lo/Signature$ActionBar$StateListAnimator;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
