.class public final Lo/FH$SharedElementCallback;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedElementCallback"
.end annotation


# instance fields
.field private final b:Lo/Ba;


# direct methods
.method public constructor <init>(Lo/Ba;)V
    .locals 1

    const-string v0, "seasonDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FH$SharedElementCallback;->b:Lo/Ba;

    return-void
.end method


# virtual methods
.method public final c()Lo/Ba;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/FH$SharedElementCallback;->b:Lo/Ba;

    return-object v0
.end method
