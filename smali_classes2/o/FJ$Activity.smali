.class public final Lo/FJ$Activity;
.super Lo/FJ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final e:Lo/AS;


# direct methods
.method public constructor <init>(Lo/AS;)V
    .locals 1

    const-string v0, "episodeDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lo/FJ;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FJ$Activity;->e:Lo/AS;

    return-void
.end method


# virtual methods
.method public final b()Lo/AS;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/FJ$Activity;->e:Lo/AS;

    return-object v0
.end method
