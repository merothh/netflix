.class public final Lo/GY$ActionBar$Activity;
.super Lo/GY$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GY$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lo/GY$ActionBar;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/GY$ActionBar$Activity;->d:Z

    iput p2, p0, Lo/GY$ActionBar$Activity;->e:I

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lo/GY$ActionBar$Activity;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 48
    iget v0, p0, Lo/GY$ActionBar$Activity;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/GY$ActionBar$Activity;

    if-eqz v0, :cond_0

    check-cast p1, Lo/GY$ActionBar$Activity;

    iget-boolean v0, p0, Lo/GY$ActionBar$Activity;->d:Z

    iget-boolean v1, p1, Lo/GY$ActionBar$Activity;->d:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lo/GY$ActionBar$Activity;->e()I

    move-result v0

    invoke-virtual {p1}, Lo/GY$ActionBar$Activity;->e()I

    move-result p1

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
    .locals 2

    iget-boolean v0, p0, Lo/GY$ActionBar$Activity;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lo/GY$ActionBar$Activity;->e()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullscreenToggle(fullscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/GY$ActionBar$Activity;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", itemPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/GY$ActionBar$Activity;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
