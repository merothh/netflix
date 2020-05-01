.class public final Lo/afg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/Boolean;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afg;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Boolean;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/afg;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final e(Ljava/lang/Boolean;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lo/afg;->a:Ljava/lang/Boolean;

    return-void
.end method
