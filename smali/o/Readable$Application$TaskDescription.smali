.class public final Lo/Readable$Application$TaskDescription;
.super Lo/NoSuchFieldError$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Readable$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TaskDescription"
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 714
    invoke-direct {p0}, Lo/NoSuchFieldError$ActionBar;-><init>()V

    .line 715
    iput-object p1, p0, Lo/Readable$Application$TaskDescription;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 725
    iget-object v0, p0, Lo/Readable$Application$TaskDescription;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lo/NumberFormatException$Application;->e(Ljava/lang/Object;I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 720
    iget-object v0, p0, Lo/Readable$Application$TaskDescription;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lo/NumberFormatException$Application;->a(Ljava/lang/Object;I)V

    return-void
.end method
