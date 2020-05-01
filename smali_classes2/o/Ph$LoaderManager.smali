.class public final Lo/Ph$LoaderManager;
.super Lo/Ph;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation


# instance fields
.field private final e:Lo/Bc;


# direct methods
.method public constructor <init>(Lo/Bc;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lo/Ph;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/Ph$LoaderManager;->e:Lo/Bc;

    return-void
.end method


# virtual methods
.method public final a()Lo/Bc;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Ph$LoaderManager;->e:Lo/Bc;

    return-object v0
.end method
