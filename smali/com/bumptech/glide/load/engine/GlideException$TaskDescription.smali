.class final Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/GlideException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private b:Z

.field private final c:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->b:Z

    .line 233
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->c:Ljava/lang/Appendable;

    return-void
.end method

.method private e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 3

    .line 238
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->b:Z

    .line 240
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->c:Ljava/lang/Appendable;

    const-string v2, "  "

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    .line 242
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->b:Z

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->c:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2

    .line 249
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 250
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3

    .line 256
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 257
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->b:Z

    .line 259
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->c:Ljava/lang/Appendable;

    const-string v2, "  "

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 261
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->b:Z

    .line 262
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$TaskDescription;->c:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method
