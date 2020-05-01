.class public Lo/aid;
.super Lo/aie;
.source ""


# instance fields
.field private final a:Lo/ahX;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ahX;Ljava/lang/String;)V
    .locals 1

    .line 50
    sget-object v0, Lo/ahW;->a:Lo/aib;

    invoke-direct {p0, v0}, Lo/aie;-><init>(Lo/aib;)V

    .line 51
    iput-object p1, p0, Lo/aid;->a:Lo/ahX;

    .line 52
    iput-object p2, p0, Lo/aid;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lo/aho;Lo/ahn;)Lo/ahp;
    .locals 2

    .line 111
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lo/aid;->a:Lo/ahX;

    invoke-virtual {v1, p1, p2}, Lo/ahX;->a(Lo/aho;Lo/ahn;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    const-string p2, "useridtoken"

    invoke-virtual {v0, p2, p1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 113
    iget-object p1, p0, Lo/aid;->d:Ljava/lang/String;

    const-string p2, "profileguid"

    invoke-virtual {v0, p2, p1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 123
    :cond_0
    instance-of v1, p1, Lo/aid;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 124
    :cond_1
    move-object v1, p1

    check-cast v1, Lo/aid;

    .line 125
    invoke-super {p0, p1}, Lo/aie;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aid;->a:Lo/ahX;

    iget-object v3, v1, Lo/aid;->a:Lo/ahX;

    invoke-virtual {p1, v3}, Lo/ahX;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aid;->d:Ljava/lang/String;

    iget-object v1, v1, Lo/aid;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 133
    invoke-super {p0}, Lo/aie;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/aid;->a:Lo/ahX;

    invoke-virtual {v1}, Lo/ahX;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/aid;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
