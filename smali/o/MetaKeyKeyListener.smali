.class public final Lo/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Ljava/lang/Integer;

.field private final d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

.field private final e:Lo/AutoGrowArray;


# direct methods
.method public constructor <init>(Lo/AutoGrowArray;Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 1

    const-string v0, "booleanField"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxText"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MetaKeyKeyListener;->e:Lo/AutoGrowArray;

    iput-object p2, p0, Lo/MetaKeyKeyListener;->d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    iput-object p3, p0, Lo/MetaKeyKeyListener;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/MetaKeyKeyListener;->c:Ljava/lang/Integer;

    iput-boolean p5, p0, Lo/MetaKeyKeyListener;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lo/AutoGrowArray;Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;Ljava/lang/String;Ljava/lang/Integer;ZILo/amc;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 88
    invoke-direct/range {v0 .. v5}, Lo/MetaKeyKeyListener;-><init>(Lo/AutoGrowArray;Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/MetaKeyKeyListener;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lo/MetaKeyKeyListener;->b:Z

    return-void
.end method

.method public final c()Lo/AutoGrowArray;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/MetaKeyKeyListener;->e:Lo/AutoGrowArray;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/MetaKeyKeyListener;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lo/MetaKeyKeyListener;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/MetaKeyKeyListener;

    if-eqz v0, :cond_0

    check-cast p1, Lo/MetaKeyKeyListener;

    iget-object v0, p0, Lo/MetaKeyKeyListener;->e:Lo/AutoGrowArray;

    iget-object v1, p1, Lo/MetaKeyKeyListener;->e:Lo/AutoGrowArray;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MetaKeyKeyListener;->d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    iget-object v1, p1, Lo/MetaKeyKeyListener;->d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MetaKeyKeyListener;->a:Ljava/lang/String;

    iget-object v1, p1, Lo/MetaKeyKeyListener;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MetaKeyKeyListener;->c:Ljava/lang/Integer;

    iget-object v1, p1, Lo/MetaKeyKeyListener;->c:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/MetaKeyKeyListener;->b:Z

    iget-boolean p1, p1, Lo/MetaKeyKeyListener;->b:Z

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

    iget-object v0, p0, Lo/MetaKeyKeyListener;->e:Lo/AutoGrowArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MetaKeyKeyListener;->d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MetaKeyKeyListener;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/MetaKeyKeyListener;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/MetaKeyKeyListener;->b:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KoreaCheckBoxData(booleanField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MetaKeyKeyListener;->e:Lo/AutoGrowArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkBoxType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MetaKeyKeyListener;->d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkBoxText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MetaKeyKeyListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sortOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MetaKeyKeyListener;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isActivated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MetaKeyKeyListener;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
