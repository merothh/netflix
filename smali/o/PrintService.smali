.class public final Lo/PrintService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PrintService$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/PrintService$TaskDescription;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/Integer;

.field private final e:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PrintService$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PrintService$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/PrintService;->c:Lo/PrintService$TaskDescription;

    return-void
.end method

.method public static final e(JJJ)Z
    .locals 7

    sget-object v0, Lo/PrintService;->c:Lo/PrintService$TaskDescription;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lo/PrintService$TaskDescription;->c(JJJ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FalcorMetadata: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lo/PrintService;->a:Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "expires = "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PrintService;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    iget-object v3, p0, Lo/PrintService;->e:Ljava/lang/Long;

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "timestamp = "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PrintService;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 44
    :cond_2
    iget-object v2, p0, Lo/PrintService;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "size = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PrintService;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "]"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
