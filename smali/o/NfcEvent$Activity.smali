.class public final Lo/NfcEvent$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NfcEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lo/Serializable;

.field private final c:I

.field private final d:Landroidx/fragment/app/Fragment;

.field private final e:Ljava/lang/String;

.field private final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/Serializable;Landroidx/fragment/app/Fragment;IIZ)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NfcEvent$Activity;->e:Ljava/lang/String;

    iput-object p2, p0, Lo/NfcEvent$Activity;->b:Lo/Serializable;

    iput-object p3, p0, Lo/NfcEvent$Activity;->d:Landroidx/fragment/app/Fragment;

    iput p4, p0, Lo/NfcEvent$Activity;->a:I

    iput p5, p0, Lo/NfcEvent$Activity;->c:I

    iput-boolean p6, p0, Lo/NfcEvent$Activity;->h:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 110
    iget v0, p0, Lo/NfcEvent$Activity;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 109
    iget v0, p0, Lo/NfcEvent$Activity;->a:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lo/NfcEvent$Activity;->h:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/NfcEvent$Activity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/NfcEvent$Activity;

    if-eqz v0, :cond_0

    check-cast p1, Lo/NfcEvent$Activity;

    iget-object v0, p0, Lo/NfcEvent$Activity;->e:Ljava/lang/String;

    iget-object v1, p1, Lo/NfcEvent$Activity;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NfcEvent$Activity;->b:Lo/Serializable;

    iget-object v1, p1, Lo/NfcEvent$Activity;->b:Lo/Serializable;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NfcEvent$Activity;->d:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Lo/NfcEvent$Activity;->d:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/NfcEvent$Activity;->a:I

    iget v1, p1, Lo/NfcEvent$Activity;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/NfcEvent$Activity;->c:I

    iget v1, p1, Lo/NfcEvent$Activity;->c:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/NfcEvent$Activity;->h:Z

    iget-boolean p1, p1, Lo/NfcEvent$Activity;->h:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/NfcEvent$Activity;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NfcEvent$Activity;->b:Lo/Serializable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NfcEvent$Activity;->d:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/NfcEvent$Activity;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/NfcEvent$Activity;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/NfcEvent$Activity;->h:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NfcEvent$Activity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NfcEvent$Activity;->b:Lo/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NfcEvent$Activity;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/NfcEvent$Activity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/NfcEvent$Activity;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disableMemoryCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/NfcEvent$Activity;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method