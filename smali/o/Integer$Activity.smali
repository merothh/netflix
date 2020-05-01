.class Lo/Integer$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IllegalStateException$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private a:I

.field private c:I

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lo/Integer$Activity;->e:Ljava/lang/String;

    .line 127
    iput p2, p0, Lo/Integer$Activity;->a:I

    .line 128
    iput p3, p0, Lo/Integer$Activity;->c:I

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/Integer$Activity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 151
    :cond_0
    instance-of v1, p1, Lo/Integer$Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 154
    :cond_1
    check-cast p1, Lo/Integer$Activity;

    .line 155
    iget-object v1, p0, Lo/Integer$Activity;->e:Ljava/lang/String;

    iget-object v3, p1, Lo/Integer$Activity;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lo/Integer$Activity;->a:I

    iget v3, p1, Lo/Integer$Activity;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lo/Integer$Activity;->c:I

    iget p1, p1, Lo/Integer$Activity;->c:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lo/Integer$Activity;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lo/Integer$Activity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lo/Integer$Activity;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/BufferedReader;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
