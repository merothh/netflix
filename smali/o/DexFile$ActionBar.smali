.class public Lo/DexFile$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private final d:I

.field private final e:[Lo/DexFile$Activity;


# direct methods
.method public constructor <init>(I[Lo/DexFile$Activity;)V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput p1, p0, Lo/DexFile$ActionBar;->d:I

    .line 429
    iput-object p2, p0, Lo/DexFile$ActionBar;->e:[Lo/DexFile$Activity;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 433
    iget v0, p0, Lo/DexFile$ActionBar;->d:I

    return v0
.end method

.method public d()[Lo/DexFile$Activity;
    .locals 1

    .line 437
    iget-object v0, p0, Lo/DexFile$ActionBar;->e:[Lo/DexFile$Activity;

    return-object v0
.end method
