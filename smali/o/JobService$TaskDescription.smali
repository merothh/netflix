.class final Lo/JobService$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WallpaperBackupHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/WallpaperBackupHelper<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lo/JobService$TaskDescription;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/JobService$TaskDescription;->b:Ljava/lang/Object;

    return-object v0
.end method
