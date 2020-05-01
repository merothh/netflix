.class public Lo/BinderThread;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnyRes;


# instance fields
.field private final a:Lo/LayoutTransition;

.field private final b:Lo/TypeConverter;

.field private final c:Lo/LayoutTransition;

.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/LayoutTransition;Lo/LayoutTransition;Lo/TypeConverter;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/BinderThread;->e:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lo/BinderThread;->a:Lo/LayoutTransition;

    .line 23
    iput-object p3, p0, Lo/BinderThread;->c:Lo/LayoutTransition;

    .line 24
    iput-object p4, p0, Lo/BinderThread;->b:Lo/TypeConverter;

    .line 25
    iput-boolean p5, p0, Lo/BinderThread;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lo/TypeConverter;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/BinderThread;->b:Lo/TypeConverter;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lo/BinderThread;->d:Z

    return v0
.end method

.method public c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;
    .locals 1

    .line 49
    new-instance v0, Lo/AccountManagerFuture;

    invoke-direct {v0, p1, p2, p0}, Lo/AccountManagerFuture;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lo/BinderThread;)V

    return-object v0
.end method

.method public c()Lo/LayoutTransition;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/BinderThread;->c:Lo/LayoutTransition;

    return-object v0
.end method

.method public d()Lo/LayoutTransition;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/BinderThread;->a:Lo/LayoutTransition;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/BinderThread;->e:Ljava/lang/String;

    return-object v0
.end method
